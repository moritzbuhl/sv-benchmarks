// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Function: kmem_cache_alloc
// with type: void *kmem_cache_alloc(struct kmem_cache *, gfp_t )
// with return type: (void)*
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: ldv_check_final_state
// with type: void ldv_check_final_state()
// with return type: void
void ldv_check_final_state() {
  // Void type
  return;
}

// Function: ldv_initialize
// with type: void ldv_initialize()
// with return type: void
void ldv_initialize() {
  // Void type
  return;
}

// Function: ldv_some_page
// with type: struct page *ldv_some_page()
// with return type: (struct page)*
void *external_alloc(void);
struct page *ldv_some_page() {
  // Pointer type
  return (struct page *)external_alloc();
}

// Function: led_trigger_register
// with type: int led_trigger_register(struct led_trigger *)
// with return type: int
int __VERIFIER_nondet_int(void);
int led_trigger_register(struct led_trigger *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: led_trigger_unregister
// with type: void led_trigger_unregister(struct led_trigger *)
// with return type: void
void led_trigger_unregister(struct led_trigger *arg0) {
  // Void type
  return;
}

