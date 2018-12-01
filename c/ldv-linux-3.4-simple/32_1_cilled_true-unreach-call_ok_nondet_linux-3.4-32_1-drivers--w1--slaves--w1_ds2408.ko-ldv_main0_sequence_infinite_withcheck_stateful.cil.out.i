extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
} __attribute__((__aligned__(8))) ;
struct device;
struct device;
struct completion;
struct completion;
struct task_struct;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct device;
struct device;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16] ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct vm_area_struct;
struct vm_area_struct;
struct vm_area_struct;
struct completion;
struct file;
struct task_struct;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct file;
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
struct tracepoint;
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module;
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t count ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
struct klist_node;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device *dev ) ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
struct w1_reg_num {
   __u64 family : 8 ;
   __u64 id : 48 ;
   __u64 crc : 8 ;
};
struct w1_slave;
struct w1_slave;
struct w1_family_ops {
   int (*add_slave)(struct w1_slave * ) ;
   void (*remove_slave)(struct w1_slave * ) ;
};
struct w1_family {
   struct list_head family_entry ;
   u8 fid ;
   struct w1_family_ops *fops ;
   atomic_t refcnt ;
};
struct w1_master;
struct w1_slave {
   struct module *owner ;
   unsigned char name[32] ;
   struct list_head w1_slave_entry ;
   struct w1_reg_num reg_num ;
   atomic_t refcnt ;
   u8 rom[9] ;
   u32 flags ;
   int ttl ;
   struct w1_master *master ;
   struct w1_family *family ;
   void *family_data ;
   struct device dev ;
   struct completion released ;
};
struct w1_bus_master {
   void *data ;
   u8 (*read_bit)(void * ) ;
   void (*write_bit)(void * , u8 ) ;
   u8 (*touch_bit)(void * , u8 ) ;
   u8 (*read_byte)(void * ) ;
   void (*write_byte)(void * , u8 ) ;
   u8 (*read_block)(void * , u8 * , int ) ;
   void (*write_block)(void * , u8 const * , int ) ;
   u8 (*triplet)(void * , u8 ) ;
   u8 (*reset_bus)(void * ) ;
   u8 (*set_pullup)(void * , int ) ;
   void (*search)(void * , struct w1_master * , u8 , void (*)(struct w1_master * ,
                                                               u64 ) ) ;
};
struct w1_master {
   struct list_head w1_master_entry ;
   struct module *owner ;
   unsigned char name[32] ;
   struct list_head slist ;
   int max_slave_count ;
   int slave_count ;
   unsigned long attempts ;
   int slave_ttl ;
   int initialized ;
   u32 id ;
   int search_count ;
   atomic_t refcnt ;
   void *priv ;
   int priv_size ;
   int enable_pullup ;
   int pullup_duration ;
   struct task_struct *thread ;
   struct mutex mutex ;
   struct device_driver *driver ;
   struct device dev ;
   struct w1_bus_master *bus_master ;
   u32 seq ;
};
long ldv__builtin_expect(long val , long res ) ;
extern int ( __dynamic_dev_dbg)(struct _ddebug *descriptor ,
                                                        struct device const *dev ,
                                                        char const *fmt , ...) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern int __attribute__((__warn_unused_result__)) sysfs_create_bin_file(struct kobject *kobj ,
                                                                          struct bin_attribute const *attr ) ;
extern void sysfs_remove_bin_file(struct kobject *kobj , struct bin_attribute const *attr ) ;
int init_module(void) ;
void cleanup_module(void) ;
extern void w1_unregister_family(struct w1_family * ) ;
extern int w1_register_family(struct w1_family * ) ;
extern void w1_write_8(struct w1_master * , u8 ) ;
extern u8 w1_read_8(struct w1_master * ) ;
extern void w1_write_block(struct w1_master * , u8 const * , int ) ;
extern int w1_reset_select_slave(struct w1_slave *sl ) ;
extern int w1_reset_resume_command(struct w1_master * ) ;
__inline static struct w1_slave *dev_to_w1_slave(struct device *dev ) __attribute__((__no_instrument_function__)) ;
__inline static struct w1_slave *dev_to_w1_slave(struct device *dev )
{ struct device const *__mptr ;
  struct w1_slave *__cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct device *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  char *__cil_tmp8 ;
  char *__cil_tmp9 ;
  {
  __mptr = (struct device const *)dev;
  {
  __cil_tmp3 = (struct w1_slave *)0;
  __cil_tmp4 = (unsigned long )__cil_tmp3;
  __cil_tmp5 = __cil_tmp4 + 112;
  __cil_tmp6 = (struct device *)__cil_tmp5;
  __cil_tmp7 = (unsigned int )__cil_tmp6;
  __cil_tmp8 = (char *)__mptr;
  __cil_tmp9 = __cil_tmp8 - __cil_tmp7;
  return ((struct w1_slave *)__cil_tmp9);
  }
}
}
__inline static struct w1_slave *kobj_to_w1_slave(struct kobject *kobj ) __attribute__((__no_instrument_function__)) ;
__inline static struct w1_slave *kobj_to_w1_slave(struct kobject *kobj )
{ struct kobject const *__mptr ;
  struct w1_slave *tmp ;
  struct device *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct kobject *__cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  char *__cil_tmp9 ;
  char *__cil_tmp10 ;
  struct device *__cil_tmp11 ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  __cil_tmp4 = (struct device *)0;
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = (struct kobject *)__cil_tmp6;
  __cil_tmp8 = (unsigned int )__cil_tmp7;
  __cil_tmp9 = (char *)__mptr;
  __cil_tmp10 = __cil_tmp9 - __cil_tmp8;
  __cil_tmp11 = (struct device *)__cil_tmp10;
  tmp = dev_to_w1_slave(__cil_tmp11);
  }
  return (tmp);
}
}
static char const __mod_license23[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_author24[55] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'J',
        (char const )'e', (char const )'a', (char const )'n', (char const )'-',
        (char const )'F', (char const )'r', (char const )'a', (char const )'n',
        (char const )'c', (char const )'o', (char const )'i', (char const )'s',
        (char const )' ', (char const )'D', (char const )'a', (char const )'g',
        (char const )'e', (char const )'n', (char const )'a', (char const )'i',
        (char const )'s', (char const )' ', (char const )'<', (char const )'d',
        (char const )'a', (char const )'g', (char const )'e', (char const )'n',
        (char const )'a', (char const )'i', (char const )'s', (char const )'j',
        (char const )'@', (char const )'s', (char const )'o', (char const )'n',
        (char const )'a', (char const )'t', (char const )'e', (char const )'s',
        (char const )'t', (char const )'.', (char const )'c', (char const )'o',
        (char const )'m', (char const )'>', (char const )'\000'};
static char const __mod_description25[52] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'w', (char const )'1', (char const )' ', (char const )'f',
        (char const )'a', (char const )'m', (char const )'i', (char const )'l',
        (char const )'y', (char const )' ', (char const )'2', (char const )'9',
        (char const )' ', (char const )'d', (char const )'r', (char const )'i',
        (char const )'v', (char const )'e', (char const )'r', (char const )' ',
        (char const )'f', (char const )'o', (char const )'r', (char const )' ',
        (char const )'D', (char const )'S', (char const )'2', (char const )'4',
        (char const )'0', (char const )'8', (char const )' ', (char const )'8',
        (char const )' ', (char const )'P', (char const )'i', (char const )'n',
        (char const )' ', (char const )'I', (char const )'O', (char const )'\000'};
static int _read_reg(struct w1_slave *sl , u8 address , unsigned char *buf ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "_read_reg", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "Reading with slave: %p, reg addr: %0#4x, buff addr: %p", 51U, 0U};
static int _read_reg(struct w1_slave *sl , u8 address , unsigned char *buf ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___0 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "_read_reg", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "mutex locked", 57U, 0U};
static int _read_reg(struct w1_slave *sl , u8 address , unsigned char *buf ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___1 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "_read_reg", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "mutex unlocked", 71U, 0U};
static int _read_reg(struct w1_slave *sl , u8 address , unsigned char *buf )
{ u8 wrbuf[3] ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct device *__cil_tmp17 ;
  struct device const *__cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct w1_master *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct mutex *__cil_tmp25 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  unsigned int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  struct device *__cil_tmp34 ;
  struct device const *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct w1_master *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct mutex *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  struct w1_master *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  u8 *__cil_tmp53 ;
  u8 const *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  struct w1_master *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  struct w1_master *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  struct mutex *__cil_tmp63 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp64 ;
  unsigned int __cil_tmp65 ;
  unsigned int __cil_tmp66 ;
  int __cil_tmp67 ;
  int __cil_tmp68 ;
  long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  struct device *__cil_tmp72 ;
  struct device const *__cil_tmp73 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp9 = & descriptor;
      __cil_tmp10 = __cil_tmp9->flags;
      __cil_tmp11 = __cil_tmp10 & 1U;
      __cil_tmp12 = ! __cil_tmp11;
      __cil_tmp13 = ! __cil_tmp12;
      __cil_tmp14 = (long )__cil_tmp13;
      tmp = ldv__builtin_expect(__cil_tmp14, 0L);
      }
      if (tmp) {
        {
        __cil_tmp15 = (unsigned long )sl;
        __cil_tmp16 = __cil_tmp15 + 112;
        __cil_tmp17 = (struct device *)__cil_tmp16;
        __cil_tmp18 = (struct device const *)__cil_tmp17;
        __cil_tmp19 = (unsigned int )address;
        __dynamic_dev_dbg(& descriptor, __cil_tmp18, "Reading with slave: %p, reg addr: %0#4x, buff addr: %p",
                          sl, __cil_tmp19, buf);
        }
      } else {
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  if (! buf) {
    return (-22);
  } else {
  }
  {
  __cil_tmp20 = (unsigned long )sl;
  __cil_tmp21 = __cil_tmp20 + 88;
  __cil_tmp22 = *((struct w1_master **)__cil_tmp21);
  __cil_tmp23 = (unsigned long )__cil_tmp22;
  __cil_tmp24 = __cil_tmp23 + 144;
  __cil_tmp25 = (struct mutex *)__cil_tmp24;
  mutex_lock(__cil_tmp25);
  }
  {
  while (1) {
    while_continue___1: ;
    {
    while (1) {
      while_continue___2: ;
      {
      __cil_tmp26 = & descriptor___0;
      __cil_tmp27 = __cil_tmp26->flags;
      __cil_tmp28 = __cil_tmp27 & 1U;
      __cil_tmp29 = ! __cil_tmp28;
      __cil_tmp30 = ! __cil_tmp29;
      __cil_tmp31 = (long )__cil_tmp30;
      tmp___0 = ldv__builtin_expect(__cil_tmp31, 0L);
      }
      if (tmp___0) {
        {
        __cil_tmp32 = (unsigned long )sl;
        __cil_tmp33 = __cil_tmp32 + 112;
        __cil_tmp34 = (struct device *)__cil_tmp33;
        __cil_tmp35 = (struct device const *)__cil_tmp34;
        __dynamic_dev_dbg(& descriptor___0, __cil_tmp35, "mutex locked");
        }
      } else {
      }
      goto while_break___2;
    }
    while_break___2: ;
    }
    goto while_break___1;
  }
  while_break___1: ;
  }
  {
  tmp___1 = w1_reset_select_slave(sl);
  }
  if (tmp___1) {
    {
    __cil_tmp36 = (unsigned long )sl;
    __cil_tmp37 = __cil_tmp36 + 88;
    __cil_tmp38 = *((struct w1_master **)__cil_tmp37);
    __cil_tmp39 = (unsigned long )__cil_tmp38;
    __cil_tmp40 = __cil_tmp39 + 144;
    __cil_tmp41 = (struct mutex *)__cil_tmp40;
    mutex_unlock(__cil_tmp41);
    }
    return (-5);
  } else {
  }
  {
  __cil_tmp42 = 0 * 1UL;
  __cil_tmp43 = (unsigned long )(wrbuf) + __cil_tmp42;
  *((u8 *)__cil_tmp43) = (u8 )240;
  __cil_tmp44 = 1 * 1UL;
  __cil_tmp45 = (unsigned long )(wrbuf) + __cil_tmp44;
  *((u8 *)__cil_tmp45) = address;
  __cil_tmp46 = 2 * 1UL;
  __cil_tmp47 = (unsigned long )(wrbuf) + __cil_tmp46;
  *((u8 *)__cil_tmp47) = (u8 )0;
  __cil_tmp48 = (unsigned long )sl;
  __cil_tmp49 = __cil_tmp48 + 88;
  __cil_tmp50 = *((struct w1_master **)__cil_tmp49);
  __cil_tmp51 = 0 * 1UL;
  __cil_tmp52 = (unsigned long )(wrbuf) + __cil_tmp51;
  __cil_tmp53 = (u8 *)__cil_tmp52;
  __cil_tmp54 = (u8 const *)__cil_tmp53;
  w1_write_block(__cil_tmp50, __cil_tmp54, 3);
  __cil_tmp55 = (unsigned long )sl;
  __cil_tmp56 = __cil_tmp55 + 88;
  __cil_tmp57 = *((struct w1_master **)__cil_tmp56);
  *buf = w1_read_8(__cil_tmp57);
  __cil_tmp58 = (unsigned long )sl;
  __cil_tmp59 = __cil_tmp58 + 88;
  __cil_tmp60 = *((struct w1_master **)__cil_tmp59);
  __cil_tmp61 = (unsigned long )__cil_tmp60;
  __cil_tmp62 = __cil_tmp61 + 144;
  __cil_tmp63 = (struct mutex *)__cil_tmp62;
  mutex_unlock(__cil_tmp63);
  }
  {
  while (1) {
    while_continue___3: ;
    {
    while (1) {
      while_continue___4: ;
      {
      __cil_tmp64 = & descriptor___1;
      __cil_tmp65 = __cil_tmp64->flags;
      __cil_tmp66 = __cil_tmp65 & 1U;
      __cil_tmp67 = ! __cil_tmp66;
      __cil_tmp68 = ! __cil_tmp67;
      __cil_tmp69 = (long )__cil_tmp68;
      tmp___2 = ldv__builtin_expect(__cil_tmp69, 0L);
      }
      if (tmp___2) {
        {
        __cil_tmp70 = (unsigned long )sl;
        __cil_tmp71 = __cil_tmp70 + 112;
        __cil_tmp72 = (struct device *)__cil_tmp71;
        __cil_tmp73 = (struct device const *)__cil_tmp72;
        __dynamic_dev_dbg(& descriptor___1, __cil_tmp73, "mutex unlocked");
        }
      } else {
      }
      goto while_break___4;
    }
    while_break___4: ;
    }
    goto while_break___3;
  }
  while_break___3: ;
  }
  return (1);
}
}
static ssize_t w1_f29_read_state(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                 char *buf , loff_t off , size_t count ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___2 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "w1_f29_read_state", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p", 82U, 0U};
static ssize_t w1_f29_read_state(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                 char *buf , loff_t off , size_t count )
{ struct w1_slave *tmp ;
  long tmp___0 ;
  struct w1_slave *tmp___1 ;
  int tmp___2 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct device *__cil_tmp19 ;
  struct device const *__cil_tmp20 ;
  char const *__cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  u8 __cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp11 = & descriptor___2;
      __cil_tmp12 = __cil_tmp11->flags;
      __cil_tmp13 = __cil_tmp12 & 1U;
      __cil_tmp14 = ! __cil_tmp13;
      __cil_tmp15 = ! __cil_tmp14;
      __cil_tmp16 = (long )__cil_tmp15;
      tmp___0 = ldv__builtin_expect(__cil_tmp16, 0L);
      }
      if (tmp___0) {
        {
        tmp = kobj_to_w1_slave(kobj);
        __cil_tmp17 = (unsigned long )tmp;
        __cil_tmp18 = __cil_tmp17 + 112;
        __cil_tmp19 = (struct device *)__cil_tmp18;
        __cil_tmp20 = (struct device const *)__cil_tmp19;
        __cil_tmp21 = *((char const **)bin_attr);
        __cil_tmp22 = (unsigned int )off;
        __dynamic_dev_dbg(& descriptor___2, __cil_tmp20, "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p",
                          __cil_tmp21, kobj, __cil_tmp22, count, buf);
        }
      } else {
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  tmp___1 = kobj_to_w1_slave(kobj);
  __cil_tmp23 = (u8 )136;
  __cil_tmp24 = (unsigned char *)buf;
  tmp___2 = _read_reg(tmp___1, __cil_tmp23, __cil_tmp24);
  }
  return ((ssize_t )tmp___2);
}
}
static ssize_t w1_f29_read_output(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                  char *buf , loff_t off , size_t count ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___3 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "w1_f29_read_output", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p", 95U, 0U};
static ssize_t w1_f29_read_output(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                  char *buf , loff_t off , size_t count )
{ struct w1_slave *tmp ;
  long tmp___0 ;
  struct w1_slave *tmp___1 ;
  int tmp___2 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct device *__cil_tmp19 ;
  struct device const *__cil_tmp20 ;
  char const *__cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  u8 __cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp11 = & descriptor___3;
      __cil_tmp12 = __cil_tmp11->flags;
      __cil_tmp13 = __cil_tmp12 & 1U;
      __cil_tmp14 = ! __cil_tmp13;
      __cil_tmp15 = ! __cil_tmp14;
      __cil_tmp16 = (long )__cil_tmp15;
      tmp___0 = ldv__builtin_expect(__cil_tmp16, 0L);
      }
      if (tmp___0) {
        {
        tmp = kobj_to_w1_slave(kobj);
        __cil_tmp17 = (unsigned long )tmp;
        __cil_tmp18 = __cil_tmp17 + 112;
        __cil_tmp19 = (struct device *)__cil_tmp18;
        __cil_tmp20 = (struct device const *)__cil_tmp19;
        __cil_tmp21 = *((char const **)bin_attr);
        __cil_tmp22 = (unsigned int )off;
        __dynamic_dev_dbg(& descriptor___3, __cil_tmp20, "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p",
                          __cil_tmp21, kobj, __cil_tmp22, count, buf);
        }
      } else {
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  tmp___1 = kobj_to_w1_slave(kobj);
  __cil_tmp23 = (u8 )137;
  __cil_tmp24 = (unsigned char *)buf;
  tmp___2 = _read_reg(tmp___1, __cil_tmp23, __cil_tmp24);
  }
  return ((ssize_t )tmp___2);
}
}
static ssize_t w1_f29_read_activity(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                    char *buf , loff_t off , size_t count ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___4 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "w1_f29_read_activity", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p", 109U, 0U};
static ssize_t w1_f29_read_activity(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                    char *buf , loff_t off , size_t count )
{ struct w1_slave *tmp ;
  long tmp___0 ;
  struct w1_slave *tmp___1 ;
  int tmp___2 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct device *__cil_tmp19 ;
  struct device const *__cil_tmp20 ;
  char const *__cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  u8 __cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp11 = & descriptor___4;
      __cil_tmp12 = __cil_tmp11->flags;
      __cil_tmp13 = __cil_tmp12 & 1U;
      __cil_tmp14 = ! __cil_tmp13;
      __cil_tmp15 = ! __cil_tmp14;
      __cil_tmp16 = (long )__cil_tmp15;
      tmp___0 = ldv__builtin_expect(__cil_tmp16, 0L);
      }
      if (tmp___0) {
        {
        tmp = kobj_to_w1_slave(kobj);
        __cil_tmp17 = (unsigned long )tmp;
        __cil_tmp18 = __cil_tmp17 + 112;
        __cil_tmp19 = (struct device *)__cil_tmp18;
        __cil_tmp20 = (struct device const *)__cil_tmp19;
        __cil_tmp21 = *((char const **)bin_attr);
        __cil_tmp22 = (unsigned int )off;
        __dynamic_dev_dbg(& descriptor___4, __cil_tmp20, "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p",
                          __cil_tmp21, kobj, __cil_tmp22, count, buf);
        }
      } else {
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  tmp___1 = kobj_to_w1_slave(kobj);
  __cil_tmp23 = (u8 )138;
  __cil_tmp24 = (unsigned char *)buf;
  tmp___2 = _read_reg(tmp___1, __cil_tmp23, __cil_tmp24);
  }
  return ((ssize_t )tmp___2);
}
}
static ssize_t w1_f29_read_cond_search_mask(struct file *filp , struct kobject *kobj ,
                                            struct bin_attribute *bin_attr , char *buf ,
                                            loff_t off , size_t count ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___5 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "w1_f29_read_cond_search_mask", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p", 123U, 0U};
static ssize_t w1_f29_read_cond_search_mask(struct file *filp , struct kobject *kobj ,
                                            struct bin_attribute *bin_attr , char *buf ,
                                            loff_t off , size_t count )
{ struct w1_slave *tmp ;
  long tmp___0 ;
  struct w1_slave *tmp___1 ;
  int tmp___2 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct device *__cil_tmp19 ;
  struct device const *__cil_tmp20 ;
  char const *__cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  u8 __cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp11 = & descriptor___5;
      __cil_tmp12 = __cil_tmp11->flags;
      __cil_tmp13 = __cil_tmp12 & 1U;
      __cil_tmp14 = ! __cil_tmp13;
      __cil_tmp15 = ! __cil_tmp14;
      __cil_tmp16 = (long )__cil_tmp15;
      tmp___0 = ldv__builtin_expect(__cil_tmp16, 0L);
      }
      if (tmp___0) {
        {
        tmp = kobj_to_w1_slave(kobj);
        __cil_tmp17 = (unsigned long )tmp;
        __cil_tmp18 = __cil_tmp17 + 112;
        __cil_tmp19 = (struct device *)__cil_tmp18;
        __cil_tmp20 = (struct device const *)__cil_tmp19;
        __cil_tmp21 = *((char const **)bin_attr);
        __cil_tmp22 = (unsigned int )off;
        __dynamic_dev_dbg(& descriptor___5, __cil_tmp20, "Reading %s kobj: %p, off: %0#10x, count: %zu, buff addr: %p",
                          __cil_tmp21, kobj, __cil_tmp22, count, buf);
        }
      } else {
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  tmp___1 = kobj_to_w1_slave(kobj);
  __cil_tmp23 = (u8 )139;
  __cil_tmp24 = (unsigned char *)buf;
  tmp___2 = _read_reg(tmp___1, __cil_tmp23, __cil_tmp24);
  }
  return ((ssize_t )tmp___2);
}
}
static ssize_t w1_f29_read_cond_search_polarity(struct file *filp , struct kobject *kobj ,
                                                struct bin_attribute *bin_attr , char *buf ,
                                                loff_t off , size_t count )
{ struct w1_slave *tmp ;
  int tmp___0 ;
  u8 __cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  {
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  tmp = kobj_to_w1_slave(kobj);
  __cil_tmp9 = (u8 )140;
  __cil_tmp10 = (unsigned char *)buf;
  tmp___0 = _read_reg(tmp, __cil_tmp9, __cil_tmp10);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t w1_f29_read_status_control(struct file *filp , struct kobject *kobj ,
                                          struct bin_attribute *bin_attr , char *buf ,
                                          loff_t off , size_t count )
{ struct w1_slave *tmp ;
  int tmp___0 ;
  u8 __cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  {
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  tmp = kobj_to_w1_slave(kobj);
  __cil_tmp9 = (u8 )141;
  __cil_tmp10 = (unsigned char *)buf;
  tmp___0 = _read_reg(tmp, __cil_tmp9, __cil_tmp10);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t w1_f29_write_output(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                   char *buf , loff_t off , size_t count ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___6 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "w1_f29_write_output", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "locking mutex for write_output", 168U, 0U};
static ssize_t w1_f29_write_output(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                   char *buf , loff_t off , size_t count ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___7 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "w1_f29_write_output", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "mutex locked", 170U, 0U};
static ssize_t w1_f29_write_output(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                   char *buf , loff_t off , size_t count ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___8 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "w1_f29_write_output", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "mutex unlocked, retries:%d", 206U, 0U};
static ssize_t w1_f29_write_output(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                   char *buf , loff_t off , size_t count ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___9 __attribute__((__used__,
__section__("__verbose"))) = {"w1_ds2408", "w1_f29_write_output", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/12354/dscv_tempdir/dscv/ri/32_1/drivers/w1/slaves/w1_ds2408.c.common.c",
    "mutex unlocked in error, retries:%d", 212U, 0U};
static ssize_t w1_f29_write_output(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                   char *buf , loff_t off , size_t count )
{ struct w1_slave *sl ;
  struct w1_slave *tmp ;
  u8 w1_buf[3] ;
  u8 readBack ;
  unsigned int retries ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  u8 tmp___5 ;
  unsigned int tmp___6 ;
  long tmp___7 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct device *__cil_tmp28 ;
  struct device const *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct w1_master *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct mutex *__cil_tmp35 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct device *__cil_tmp44 ;
  struct device const *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  char __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  char __cil_tmp53 ;
  int __cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  struct w1_master *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  u8 *__cil_tmp61 ;
  u8 const *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  struct w1_master *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct w1_master *__cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  struct w1_master *__cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  u8 *__cil_tmp81 ;
  u8 const *__cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  struct w1_master *__cil_tmp85 ;
  char __cil_tmp86 ;
  int __cil_tmp87 ;
  int __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  struct w1_master *__cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  struct mutex *__cil_tmp94 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp95 ;
  unsigned int __cil_tmp96 ;
  unsigned int __cil_tmp97 ;
  int __cil_tmp98 ;
  int __cil_tmp99 ;
  long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  struct device *__cil_tmp103 ;
  struct device const *__cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  struct w1_master *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  struct mutex *__cil_tmp110 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp111 ;
  unsigned int __cil_tmp112 ;
  unsigned int __cil_tmp113 ;
  int __cil_tmp114 ;
  int __cil_tmp115 ;
  long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  struct device *__cil_tmp119 ;
  struct device const *__cil_tmp120 ;
  {
  {
  tmp = kobj_to_w1_slave(kobj);
  sl = tmp;
  retries = 3U;
  }
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp20 = & descriptor___6;
      __cil_tmp21 = __cil_tmp20->flags;
      __cil_tmp22 = __cil_tmp21 & 1U;
      __cil_tmp23 = ! __cil_tmp22;
      __cil_tmp24 = ! __cil_tmp23;
      __cil_tmp25 = (long )__cil_tmp24;
      tmp___0 = ldv__builtin_expect(__cil_tmp25, 0L);
      }
      if (tmp___0) {
        {
        __cil_tmp26 = (unsigned long )sl;
        __cil_tmp27 = __cil_tmp26 + 112;
        __cil_tmp28 = (struct device *)__cil_tmp27;
        __cil_tmp29 = (struct device const *)__cil_tmp28;
        __dynamic_dev_dbg(& descriptor___6, __cil_tmp29, "locking mutex for write_output");
        }
      } else {
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp30 = (unsigned long )sl;
  __cil_tmp31 = __cil_tmp30 + 88;
  __cil_tmp32 = *((struct w1_master **)__cil_tmp31);
  __cil_tmp33 = (unsigned long )__cil_tmp32;
  __cil_tmp34 = __cil_tmp33 + 144;
  __cil_tmp35 = (struct mutex *)__cil_tmp34;
  mutex_lock(__cil_tmp35);
  }
  {
  while (1) {
    while_continue___1: ;
    {
    while (1) {
      while_continue___2: ;
      {
      __cil_tmp36 = & descriptor___7;
      __cil_tmp37 = __cil_tmp36->flags;
      __cil_tmp38 = __cil_tmp37 & 1U;
      __cil_tmp39 = ! __cil_tmp38;
      __cil_tmp40 = ! __cil_tmp39;
      __cil_tmp41 = (long )__cil_tmp40;
      tmp___1 = ldv__builtin_expect(__cil_tmp41, 0L);
      }
      if (tmp___1) {
        {
        __cil_tmp42 = (unsigned long )sl;
        __cil_tmp43 = __cil_tmp42 + 112;
        __cil_tmp44 = (struct device *)__cil_tmp43;
        __cil_tmp45 = (struct device const *)__cil_tmp44;
        __dynamic_dev_dbg(& descriptor___7, __cil_tmp45, "mutex locked");
        }
      } else {
      }
      goto while_break___2;
    }
    while_break___2: ;
    }
    goto while_break___1;
  }
  while_break___1: ;
  }
  {
  tmp___2 = w1_reset_select_slave(sl);
  }
  if (tmp___2) {
    goto error;
  } else {
  }
  {
  while (1) {
    while_continue___3: ;
    tmp___6 = retries;
    retries = retries - 1U;
    if (tmp___6) {
    } else {
      goto while_break___3;
    }
    {
    __cil_tmp46 = 0 * 1UL;
    __cil_tmp47 = (unsigned long )(w1_buf) + __cil_tmp46;
    *((u8 *)__cil_tmp47) = (u8 )90;
    __cil_tmp48 = 1 * 1UL;
    __cil_tmp49 = (unsigned long )(w1_buf) + __cil_tmp48;
    __cil_tmp50 = *buf;
    *((u8 *)__cil_tmp49) = (u8 )__cil_tmp50;
    __cil_tmp51 = 2 * 1UL;
    __cil_tmp52 = (unsigned long )(w1_buf) + __cil_tmp51;
    __cil_tmp53 = *buf;
    __cil_tmp54 = (int )__cil_tmp53;
    __cil_tmp55 = ~ __cil_tmp54;
    *((u8 *)__cil_tmp52) = (u8 )__cil_tmp55;
    __cil_tmp56 = (unsigned long )sl;
    __cil_tmp57 = __cil_tmp56 + 88;
    __cil_tmp58 = *((struct w1_master **)__cil_tmp57);
    __cil_tmp59 = 0 * 1UL;
    __cil_tmp60 = (unsigned long )(w1_buf) + __cil_tmp59;
    __cil_tmp61 = (u8 *)__cil_tmp60;
    __cil_tmp62 = (u8 const *)__cil_tmp61;
    w1_write_block(__cil_tmp58, __cil_tmp62, 3);
    __cil_tmp63 = (unsigned long )sl;
    __cil_tmp64 = __cil_tmp63 + 88;
    __cil_tmp65 = *((struct w1_master **)__cil_tmp64);
    readBack = w1_read_8(__cil_tmp65);
    __cil_tmp66 = (unsigned long )sl;
    __cil_tmp67 = __cil_tmp66 + 88;
    __cil_tmp68 = *((struct w1_master **)__cil_tmp67);
    tmp___3 = w1_reset_resume_command(__cil_tmp68);
    }
    if (tmp___3) {
      goto error;
    } else {
    }
    {
    __cil_tmp69 = (int )readBack;
    if (__cil_tmp69 != 170) {
      goto while_continue___3;
    } else {
    }
    }
    {
    __cil_tmp70 = 0 * 1UL;
    __cil_tmp71 = (unsigned long )(w1_buf) + __cil_tmp70;
    *((u8 *)__cil_tmp71) = (u8 )240;
    __cil_tmp72 = 1 * 1UL;
    __cil_tmp73 = (unsigned long )(w1_buf) + __cil_tmp72;
    *((u8 *)__cil_tmp73) = (u8 )137;
    __cil_tmp74 = 2 * 1UL;
    __cil_tmp75 = (unsigned long )(w1_buf) + __cil_tmp74;
    *((u8 *)__cil_tmp75) = (u8 )0;
    __cil_tmp76 = (unsigned long )sl;
    __cil_tmp77 = __cil_tmp76 + 88;
    __cil_tmp78 = *((struct w1_master **)__cil_tmp77);
    __cil_tmp79 = 0 * 1UL;
    __cil_tmp80 = (unsigned long )(w1_buf) + __cil_tmp79;
    __cil_tmp81 = (u8 *)__cil_tmp80;
    __cil_tmp82 = (u8 const *)__cil_tmp81;
    w1_write_block(__cil_tmp78, __cil_tmp82, 3);
    __cil_tmp83 = (unsigned long )sl;
    __cil_tmp84 = __cil_tmp83 + 88;
    __cil_tmp85 = *((struct w1_master **)__cil_tmp84);
    tmp___5 = w1_read_8(__cil_tmp85);
    }
    {
    __cil_tmp86 = *buf;
    __cil_tmp87 = (int )__cil_tmp86;
    __cil_tmp88 = (int )tmp___5;
    if (__cil_tmp88 == __cil_tmp87) {
      {
      __cil_tmp89 = (unsigned long )sl;
      __cil_tmp90 = __cil_tmp89 + 88;
      __cil_tmp91 = *((struct w1_master **)__cil_tmp90);
      __cil_tmp92 = (unsigned long )__cil_tmp91;
      __cil_tmp93 = __cil_tmp92 + 144;
      __cil_tmp94 = (struct mutex *)__cil_tmp93;
      mutex_unlock(__cil_tmp94);
      }
      {
      while (1) {
        while_continue___4: ;
        {
        while (1) {
          while_continue___5: ;
          {
          __cil_tmp95 = & descriptor___8;
          __cil_tmp96 = __cil_tmp95->flags;
          __cil_tmp97 = __cil_tmp96 & 1U;
          __cil_tmp98 = ! __cil_tmp97;
          __cil_tmp99 = ! __cil_tmp98;
          __cil_tmp100 = (long )__cil_tmp99;
          tmp___4 = ldv__builtin_expect(__cil_tmp100, 0L);
          }
          if (tmp___4) {
            {
            __cil_tmp101 = (unsigned long )sl;
            __cil_tmp102 = __cil_tmp101 + 112;
            __cil_tmp103 = (struct device *)__cil_tmp102;
            __cil_tmp104 = (struct device const *)__cil_tmp103;
            __dynamic_dev_dbg(& descriptor___8, __cil_tmp104, "mutex unlocked, retries:%d",
                              retries);
            }
          } else {
          }
          goto while_break___5;
        }
        while_break___5: ;
        }
        goto while_break___4;
      }
      while_break___4: ;
      }
      return ((ssize_t )1);
    } else {
    }
    }
  }
  while_break___3: ;
  }
  error:
  {
  __cil_tmp105 = (unsigned long )sl;
  __cil_tmp106 = __cil_tmp105 + 88;
  __cil_tmp107 = *((struct w1_master **)__cil_tmp106);
  __cil_tmp108 = (unsigned long )__cil_tmp107;
  __cil_tmp109 = __cil_tmp108 + 144;
  __cil_tmp110 = (struct mutex *)__cil_tmp109;
  mutex_unlock(__cil_tmp110);
  }
  {
  while (1) {
    while_continue___6: ;
    {
    while (1) {
      while_continue___7: ;
      {
      __cil_tmp111 = & descriptor___9;
      __cil_tmp112 = __cil_tmp111->flags;
      __cil_tmp113 = __cil_tmp112 & 1U;
      __cil_tmp114 = ! __cil_tmp113;
      __cil_tmp115 = ! __cil_tmp114;
      __cil_tmp116 = (long )__cil_tmp115;
      tmp___7 = ldv__builtin_expect(__cil_tmp116, 0L);
      }
      if (tmp___7) {
        {
        __cil_tmp117 = (unsigned long )sl;
        __cil_tmp118 = __cil_tmp117 + 112;
        __cil_tmp119 = (struct device *)__cil_tmp118;
        __cil_tmp120 = (struct device const *)__cil_tmp119;
        __dynamic_dev_dbg(& descriptor___9, __cil_tmp120, "mutex unlocked in error, retries:%d",
                          retries);
        }
      } else {
      }
      goto while_break___7;
    }
    while_break___7: ;
    }
    goto while_break___6;
  }
  while_break___6: ;
  }
  return ((ssize_t )-5);
}
}
static ssize_t w1_f29_write_activity(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                     char *buf , loff_t off , size_t count )
{ struct w1_slave *sl ;
  struct w1_slave *tmp ;
  unsigned int retries ;
  int tmp___0 ;
  u8 tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct w1_master *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct mutex *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct w1_master *__cil_tmp22 ;
  u8 __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct w1_master *__cil_tmp26 ;
  int __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct w1_master *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct mutex *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct w1_master *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  struct w1_master *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  struct mutex *__cil_tmp42 ;
  {
  {
  tmp = kobj_to_w1_slave(kobj);
  sl = tmp;
  retries = 3U;
  }
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  __cil_tmp14 = (unsigned long )sl;
  __cil_tmp15 = __cil_tmp14 + 88;
  __cil_tmp16 = *((struct w1_master **)__cil_tmp15);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 144;
  __cil_tmp19 = (struct mutex *)__cil_tmp18;
  mutex_lock(__cil_tmp19);
  tmp___0 = w1_reset_select_slave(sl);
  }
  if (tmp___0) {
    goto error;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    tmp___3 = retries;
    retries = retries - 1U;
    if (tmp___3) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp20 = (unsigned long )sl;
    __cil_tmp21 = __cil_tmp20 + 88;
    __cil_tmp22 = *((struct w1_master **)__cil_tmp21);
    __cil_tmp23 = (u8 )195;
    w1_write_8(__cil_tmp22, __cil_tmp23);
    __cil_tmp24 = (unsigned long )sl;
    __cil_tmp25 = __cil_tmp24 + 88;
    __cil_tmp26 = *((struct w1_master **)__cil_tmp25);
    tmp___1 = w1_read_8(__cil_tmp26);
    }
    {
    __cil_tmp27 = (int )tmp___1;
    if (__cil_tmp27 == 170) {
      {
      __cil_tmp28 = (unsigned long )sl;
      __cil_tmp29 = __cil_tmp28 + 88;
      __cil_tmp30 = *((struct w1_master **)__cil_tmp29);
      __cil_tmp31 = (unsigned long )__cil_tmp30;
      __cil_tmp32 = __cil_tmp31 + 144;
      __cil_tmp33 = (struct mutex *)__cil_tmp32;
      mutex_unlock(__cil_tmp33);
      }
      return ((ssize_t )1);
    } else {
    }
    }
    {
    __cil_tmp34 = (unsigned long )sl;
    __cil_tmp35 = __cil_tmp34 + 88;
    __cil_tmp36 = *((struct w1_master **)__cil_tmp35);
    tmp___2 = w1_reset_resume_command(__cil_tmp36);
    }
    if (tmp___2) {
      goto error;
    } else {
    }
  }
  while_break: ;
  }
  error:
  {
  __cil_tmp37 = (unsigned long )sl;
  __cil_tmp38 = __cil_tmp37 + 88;
  __cil_tmp39 = *((struct w1_master **)__cil_tmp38);
  __cil_tmp40 = (unsigned long )__cil_tmp39;
  __cil_tmp41 = __cil_tmp40 + 144;
  __cil_tmp42 = (struct mutex *)__cil_tmp41;
  mutex_unlock(__cil_tmp42);
  }
  return ((ssize_t )-5);
}
}
static ssize_t w1_f29_write_status_control(struct file *filp , struct kobject *kobj ,
                                           struct bin_attribute *bin_attr , char *buf ,
                                           loff_t off , size_t count )
{ struct w1_slave *sl ;
  struct w1_slave *tmp ;
  u8 w1_buf[4] ;
  unsigned int retries ;
  int tmp___0 ;
  int tmp___1 ;
  u8 tmp___2 ;
  unsigned int tmp___3 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct w1_master *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct mutex *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  char __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct w1_master *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u8 *__cil_tmp35 ;
  u8 const *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  struct w1_master *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct w1_master *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  u8 *__cil_tmp51 ;
  u8 const *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  struct w1_master *__cil_tmp55 ;
  char __cil_tmp56 ;
  int __cil_tmp57 ;
  int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  struct w1_master *__cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  struct mutex *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  struct w1_master *__cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  struct mutex *__cil_tmp70 ;
  {
  {
  tmp = kobj_to_w1_slave(kobj);
  sl = tmp;
  retries = 3U;
  }
  if (count != 1UL) {
    return ((ssize_t )-14);
  } else
  if (off != 0LL) {
    return ((ssize_t )-14);
  } else {
  }
  {
  __cil_tmp15 = (unsigned long )sl;
  __cil_tmp16 = __cil_tmp15 + 88;
  __cil_tmp17 = *((struct w1_master **)__cil_tmp16);
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  __cil_tmp19 = __cil_tmp18 + 144;
  __cil_tmp20 = (struct mutex *)__cil_tmp19;
  mutex_lock(__cil_tmp20);
  tmp___0 = w1_reset_select_slave(sl);
  }
  if (tmp___0) {
    goto error;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    tmp___3 = retries;
    retries = retries - 1U;
    if (tmp___3) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp21 = 0 * 1UL;
    __cil_tmp22 = (unsigned long )(w1_buf) + __cil_tmp21;
    *((u8 *)__cil_tmp22) = (u8 )204;
    __cil_tmp23 = 1 * 1UL;
    __cil_tmp24 = (unsigned long )(w1_buf) + __cil_tmp23;
    *((u8 *)__cil_tmp24) = (u8 )141;
    __cil_tmp25 = 2 * 1UL;
    __cil_tmp26 = (unsigned long )(w1_buf) + __cil_tmp25;
    *((u8 *)__cil_tmp26) = (u8 )0;
    __cil_tmp27 = 3 * 1UL;
    __cil_tmp28 = (unsigned long )(w1_buf) + __cil_tmp27;
    __cil_tmp29 = *buf;
    *((u8 *)__cil_tmp28) = (u8 )__cil_tmp29;
    __cil_tmp30 = (unsigned long )sl;
    __cil_tmp31 = __cil_tmp30 + 88;
    __cil_tmp32 = *((struct w1_master **)__cil_tmp31);
    __cil_tmp33 = 0 * 1UL;
    __cil_tmp34 = (unsigned long )(w1_buf) + __cil_tmp33;
    __cil_tmp35 = (u8 *)__cil_tmp34;
    __cil_tmp36 = (u8 const *)__cil_tmp35;
    w1_write_block(__cil_tmp32, __cil_tmp36, 4);
    __cil_tmp37 = (unsigned long )sl;
    __cil_tmp38 = __cil_tmp37 + 88;
    __cil_tmp39 = *((struct w1_master **)__cil_tmp38);
    tmp___1 = w1_reset_resume_command(__cil_tmp39);
    }
    if (tmp___1) {
      goto error;
    } else {
    }
    {
    __cil_tmp40 = 0 * 1UL;
    __cil_tmp41 = (unsigned long )(w1_buf) + __cil_tmp40;
    *((u8 *)__cil_tmp41) = (u8 )240;
    __cil_tmp42 = 1 * 1UL;
    __cil_tmp43 = (unsigned long )(w1_buf) + __cil_tmp42;
    *((u8 *)__cil_tmp43) = (u8 )141;
    __cil_tmp44 = 2 * 1UL;
    __cil_tmp45 = (unsigned long )(w1_buf) + __cil_tmp44;
    *((u8 *)__cil_tmp45) = (u8 )0;
    __cil_tmp46 = (unsigned long )sl;
    __cil_tmp47 = __cil_tmp46 + 88;
    __cil_tmp48 = *((struct w1_master **)__cil_tmp47);
    __cil_tmp49 = 0 * 1UL;
    __cil_tmp50 = (unsigned long )(w1_buf) + __cil_tmp49;
    __cil_tmp51 = (u8 *)__cil_tmp50;
    __cil_tmp52 = (u8 const *)__cil_tmp51;
    w1_write_block(__cil_tmp48, __cil_tmp52, 3);
    __cil_tmp53 = (unsigned long )sl;
    __cil_tmp54 = __cil_tmp53 + 88;
    __cil_tmp55 = *((struct w1_master **)__cil_tmp54);
    tmp___2 = w1_read_8(__cil_tmp55);
    }
    {
    __cil_tmp56 = *buf;
    __cil_tmp57 = (int )__cil_tmp56;
    __cil_tmp58 = (int )tmp___2;
    if (__cil_tmp58 == __cil_tmp57) {
      {
      __cil_tmp59 = (unsigned long )sl;
      __cil_tmp60 = __cil_tmp59 + 88;
      __cil_tmp61 = *((struct w1_master **)__cil_tmp60);
      __cil_tmp62 = (unsigned long )__cil_tmp61;
      __cil_tmp63 = __cil_tmp62 + 144;
      __cil_tmp64 = (struct mutex *)__cil_tmp63;
      mutex_unlock(__cil_tmp64);
      }
      return ((ssize_t )1);
    } else {
    }
    }
  }
  while_break: ;
  }
  error:
  {
  __cil_tmp65 = (unsigned long )sl;
  __cil_tmp66 = __cil_tmp65 + 88;
  __cil_tmp67 = *((struct w1_master **)__cil_tmp66);
  __cil_tmp68 = (unsigned long )__cil_tmp67;
  __cil_tmp69 = __cil_tmp68 + 144;
  __cil_tmp70 = (struct mutex *)__cil_tmp69;
  mutex_unlock(__cil_tmp70);
  }
  return ((ssize_t )-5);
}
}
static struct bin_attribute w1_f29_sysfs_bin_files[6] = { {{"state", (umode_t )292}, (size_t )1, (void *)0, & w1_f29_read_state, (ssize_t (*)(struct file * ,
                                                                                         struct kobject * ,
                                                                                         struct bin_attribute * ,
                                                                                         char * ,
                                                                                         loff_t ,
                                                                                         size_t ))0,
      (int (*)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ))0},
        {{"output",
       (umode_t )436}, (size_t )1, (void *)0, & w1_f29_read_output, & w1_f29_write_output,
      (int (*)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ))0},
        {{"activity",
       (umode_t )292}, (size_t )1, (void *)0, & w1_f29_read_activity, & w1_f29_write_activity,
      (int (*)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ))0},
        {{"cond_search_mask",
       (umode_t )292}, (size_t )1, (void *)0, & w1_f29_read_cond_search_mask, (ssize_t (*)(struct file * ,
                                                                                           struct kobject * ,
                                                                                           struct bin_attribute * ,
                                                                                           char * ,
                                                                                           loff_t ,
                                                                                           size_t ))0,
      (int (*)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ))0},
        {{"cond_search_polarity",
       (umode_t )292}, (size_t )1, (void *)0, & w1_f29_read_cond_search_polarity,
      (ssize_t (*)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ))0, (int (*)(struct file * , struct kobject * ,
                                                   struct bin_attribute *attr , struct vm_area_struct *vma ))0},
        {{"status_control",
       (umode_t )436}, (size_t )1, (void *)0, & w1_f29_read_status_control, & w1_f29_write_status_control,
      (int (*)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ))0}};
static int w1_f29_add_slave(struct w1_slave *sl )
{ int err ;
  int i ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct kobject *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct bin_attribute *__cil_tmp10 ;
  struct bin_attribute const *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct kobject *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct bin_attribute *__cil_tmp18 ;
  struct bin_attribute const *__cil_tmp19 ;
  {
  err = 0;
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < 6) {
      if (! err) {
      } else {
        goto while_break;
      }
    } else {
      goto while_break;
    }
    {
    __cil_tmp4 = 112 + 16;
    __cil_tmp5 = (unsigned long )sl;
    __cil_tmp6 = __cil_tmp5 + __cil_tmp4;
    __cil_tmp7 = (struct kobject *)__cil_tmp6;
    __cil_tmp8 = i * 56UL;
    __cil_tmp9 = (unsigned long )(w1_f29_sysfs_bin_files) + __cil_tmp8;
    __cil_tmp10 = (struct bin_attribute *)__cil_tmp9;
    __cil_tmp11 = (struct bin_attribute const *)__cil_tmp10;
    err = (int )sysfs_create_bin_file(__cil_tmp7, __cil_tmp11);
    i = i + 1;
    }
  }
  while_break: ;
  }
  if (err) {
    {
    while (1) {
      while_continue___0: ;
      i = i - 1;
      if (i >= 0) {
      } else {
        goto while_break___0;
      }
      {
      __cil_tmp12 = 112 + 16;
      __cil_tmp13 = (unsigned long )sl;
      __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
      __cil_tmp15 = (struct kobject *)__cil_tmp14;
      __cil_tmp16 = i * 56UL;
      __cil_tmp17 = (unsigned long )(w1_f29_sysfs_bin_files) + __cil_tmp16;
      __cil_tmp18 = (struct bin_attribute *)__cil_tmp17;
      __cil_tmp19 = (struct bin_attribute const *)__cil_tmp18;
      sysfs_remove_bin_file(__cil_tmp15, __cil_tmp19);
      }
    }
    while_break___0: ;
    }
  } else {
  }
  return (err);
}
}
static void w1_f29_remove_slave(struct w1_slave *sl )
{ int i ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct kobject *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct bin_attribute *__cil_tmp9 ;
  struct bin_attribute const *__cil_tmp10 ;
  {
  i = 5;
  {
  while (1) {
    while_continue: ;
    if (i >= 0) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp3 = 112 + 16;
    __cil_tmp4 = (unsigned long )sl;
    __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
    __cil_tmp6 = (struct kobject *)__cil_tmp5;
    __cil_tmp7 = i * 56UL;
    __cil_tmp8 = (unsigned long )(w1_f29_sysfs_bin_files) + __cil_tmp7;
    __cil_tmp9 = (struct bin_attribute *)__cil_tmp8;
    __cil_tmp10 = (struct bin_attribute const *)__cil_tmp9;
    sysfs_remove_bin_file(__cil_tmp6, __cil_tmp10);
    i = i - 1;
    }
  }
  while_break: ;
  }
  return;
}
}
static struct w1_family_ops w1_f29_fops = {& w1_f29_add_slave, & w1_f29_remove_slave};
static struct w1_family w1_family_29 = {{(struct list_head *)0, (struct list_head *)0}, (u8 )41, & w1_f29_fops, {0}};
static int w1_f29_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int w1_f29_init(void)
{ int tmp ;
  {
  {
  tmp = w1_register_family(& w1_family_29);
  }
  return (tmp);
}
}
static void w1_f29_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void w1_f29_exit(void)
{
  {
  {
  w1_unregister_family(& w1_family_29);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = w1_f29_init();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  w1_f29_exit();
  }
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct w1_slave *var_group1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = w1_f29_init();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      goto while_break;
    }
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    if (tmp___0 == 0) {
      goto case_0;
    } else
    if (tmp___0 == 1) {
      goto case_1;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        w1_f29_add_slave(var_group1);
        }
        goto switch_break;
        case_1:
        {
        w1_f29_remove_slave(var_group1);
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  {
  w1_f29_exit();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return;
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 w1_read_8(struct w1_master *arg0) {
  return __VERIFIER_nondet_uchar();
}
int __VERIFIER_nondet_int(void);
int w1_register_family(struct w1_family *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int w1_reset_resume_command(struct w1_master *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int w1_reset_select_slave(struct w1_slave *arg0) {
  return __VERIFIER_nondet_int();
}
void w1_unregister_family(struct w1_family *arg0) {
  return;
}
void w1_write_8(struct w1_master *arg0, u8 arg1) {
  return;
}
void w1_write_block(struct w1_master *arg0, const u8 *arg1, int arg2) {
  return;
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
