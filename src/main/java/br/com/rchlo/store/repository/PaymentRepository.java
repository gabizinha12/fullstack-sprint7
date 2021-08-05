package br.com.rchlo.store.repository;

import br.com.rchlo.store.domain.Payment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentRepository extends JpaRepository<Payment, Long> {
}
