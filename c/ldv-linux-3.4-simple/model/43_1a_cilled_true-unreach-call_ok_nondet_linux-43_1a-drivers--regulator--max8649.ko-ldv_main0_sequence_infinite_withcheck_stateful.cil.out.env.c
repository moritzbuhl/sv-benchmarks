// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Skip function: __VERIFIER_nondet_pointer

// Function: _dev_info
// with type: int _dev_info(const struct device *, const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dev_err
// with type: int dev_err(const struct device *, const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dev_get_drvdata
// with type: void *dev_get_drvdata(const struct device *)
// with return type: (void)*
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: dev_set_drvdata
// with type: int dev_set_drvdata(struct device *, void *)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: i2c_del_driver
// with type: void i2c_del_driver(struct i2c_driver *)
// with return type: void
void i2c_del_driver(struct i2c_driver *arg0) {
  // Void type
  return;
}

// Function: i2c_register_driver
// with type: int i2c_register_driver(struct module *, struct i2c_driver *)
// with return type: int
int __VERIFIER_nondet_int(void);
int i2c_register_driver(struct module *arg0, struct i2c_driver *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Skip function: kfree

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

// Function: ldv_check_return_value
// with type: void ldv_check_return_value(int)
// with return type: void
void ldv_check_return_value(int arg0) {
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

// Function: rdev_get_drvdata
// with type: void *rdev_get_drvdata(struct regulator_dev *)
// with return type: (void)*
void *external_alloc(void);
void *rdev_get_drvdata(struct regulator_dev *arg0) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: regmap_exit
// with type: void regmap_exit(struct regmap *)
// with return type: void
void regmap_exit(struct regmap *arg0) {
  // Void type
  return;
}

// Function: regmap_init_i2c
// with type: struct regmap *regmap_init_i2c(struct i2c_client *, const struct regmap_config *)
// with return type: (struct regmap)*
void *external_alloc(void);
struct regmap *regmap_init_i2c(struct i2c_client *arg0, const struct regmap_config *arg1) {
  // Pointer type
  return (struct regmap *)external_alloc();
}

// Function: regmap_read
// with type: int regmap_read(struct regmap *, unsigned int, unsigned int *)
// with return type: int
int __VERIFIER_nondet_int(void);
int regmap_read(struct regmap *arg0, unsigned int arg1, unsigned int *arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: regmap_update_bits
// with type: int regmap_update_bits(struct regmap *, unsigned int, unsigned int, unsigned int)
// with return type: int
int __VERIFIER_nondet_int(void);
int regmap_update_bits(struct regmap *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: regulator_register
// with type: struct regulator_dev *regulator_register(struct regulator_desc *, struct device *, const struct regulator_init_data *, void *, struct device_node *)
// with return type: (struct regulator_dev)*
void *external_alloc(void);
struct regulator_dev *regulator_register(struct regulator_desc *arg0, struct device *arg1, const struct regulator_init_data *arg2, void *arg3, struct device_node *arg4) {
  // Pointer type
  return (struct regulator_dev *)external_alloc();
}

// Function: regulator_unregister
// with type: void regulator_unregister(struct regulator_dev *)
// with return type: void
void regulator_unregister(struct regulator_dev *arg0) {
  // Void type
  return;
}

