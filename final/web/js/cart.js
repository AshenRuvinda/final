document.addEventListener("DOMContentLoaded", () => {
    const cartItems = document.querySelector('.cart-items');
    cartItems.innerHTML = '';
    const cartTotal = document.querySelector('.cart-total-price');
    const addToCartButtons = document.querySelectorAll('.buy_bt');
    
    addToCartButtons.forEach((button) => {
        button.addEventListener('click', addToCartClicked);
    });
    
    function addToCartClicked(event) {
        const button = event.target;
        const product = button.closest('.lap1_main');
        const title = product.querySelector('.laptop_text').textContent;
        const price = parseFloat(product.querySelector('.price_text').textContent.replace('$', ''));
        addItemToCart(title, price);
        updateCartTotal();
    }
    
    function addItemToCart(title, price) {
        const cartRow = document.createElement('tr');
        const cartRowContents = `
            <td>${title}</td>
            <td class="cart-price">${price}</td>
            <td><input class="cart-quantity-input" type="number" value="1"></td>
            <td><button class="btn btn-danger" type="button">REMOVE</button></td>
        `;
        cartRow.innerHTML = cartRowContents;
        cartItems.append(cartRow);
        cartRow.querySelector('.btn-danger').addEventListener('click', removeCartItem);
        cartRow.querySelector('.cart-quantity-input').addEventListener('change', quantityChanged);
    }
    
    function removeCartItem(event) {
        const buttonClicked = event.target;
        buttonClicked.closest('tr').remove();
        updateCartTotal();
    }
    
    function quantityChanged(event) {
        const input = event.target;
        if (isNaN(input.value) || input.value <= 0) {
            input.value = 1;
        }
        updateCartTotal();
    }
    
    function updateCartTotal() {
        let total = 0;
        const cartRows = cartItems.querySelectorAll('tr');
        cartRows.forEach((cartRow) => {
            const priceElement = cartRow.querySelector('.cart-price');
            const quantityElement = cartRow.querySelector('.cart-quantity-input');
            const price = parseFloat(priceElement.textContent);
            const quantity = quantityElement.valueAsNumber;
            total += price * quantity;
        });
        cartTotal.textContent = `$${total.toFixed(2)}`;
    }
});
