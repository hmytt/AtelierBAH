package com.atelierBAH.ecommerce.dto;

import com.atelierBAH.ecommerce.entity.Address;
import com.atelierBAH.ecommerce.entity.Customer;
import com.atelierBAH.ecommerce.entity.Order;
import com.atelierBAH.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}
