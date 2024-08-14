package com.atelierBAH.ecommerce.service;

import com.atelierBAH.ecommerce.dto.Purchase;
import com.atelierBAH.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
