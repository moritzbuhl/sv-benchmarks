extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef __u16 __le16;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct arch_spinlock;
struct arch_spinlock;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_5914_31 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_30 {
   s64 lock ;
   struct __anonstruct_ldv_5914_31 ldv_5914 ;
};
typedef union __anonunion_arch_rwlock_t_30 arch_rwlock_t;
struct lockdep_map;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_34 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_34 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
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
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
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
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
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
struct cred;
struct cred;
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
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
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
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13363_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13363_134 ldv_13363 ;
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
struct static_key {
   atomic_t enabled ;
};
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
                    size_t ) ;
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
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
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
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
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
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
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
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
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
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
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
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
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
   void (*release)(struct device * ) ;
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
   unsigned char active : 1 ;
};
typedef unsigned long kernel_ulong_t;
struct hid_device_id {
   __u16 bus ;
   __u16 pad1 ;
   __u32 vendor ;
   __u32 product ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
};
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_136 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_136 u ;
};
struct block_device;
struct block_device;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct nameidata;
struct path;
struct path;
struct vfsmount;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_137 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_137 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct prio_tree_node;
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct rcu_head rcu ;
   struct upid numbers[1U] ;
};
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct export_operations;
struct export_operations;
struct iovec;
struct iovec;
struct kiocb;
struct kiocb;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct dquot;
struct dquot;
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_140 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_139 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_140 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_139 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct backing_dev_info;
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
};
struct request_queue;
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_16775_141 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_16794_142 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion_ldv_16812_143 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_16775_141 ldv_16775 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_16794_142 ldv_16794 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_16812_143 ldv_16812 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   uid_t uid ;
   uid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_144 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_144 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_release_private)(struct file_lock * ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_146 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_145 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_146 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_145 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct ff_device;
struct input_mt_slot;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt_slot *mt ;
   int mtsize ;
   int slot ;
   int trkid ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   bool sync ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   struct file_operations const *fops ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[0U] ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   int brightness ;
   int max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
enum power_supply_property {
    POWER_SUPPLY_PROP_STATUS = 0,
    POWER_SUPPLY_PROP_CHARGE_TYPE = 1,
    POWER_SUPPLY_PROP_HEALTH = 2,
    POWER_SUPPLY_PROP_PRESENT = 3,
    POWER_SUPPLY_PROP_ONLINE = 4,
    POWER_SUPPLY_PROP_TECHNOLOGY = 5,
    POWER_SUPPLY_PROP_CYCLE_COUNT = 6,
    POWER_SUPPLY_PROP_VOLTAGE_MAX = 7,
    POWER_SUPPLY_PROP_VOLTAGE_MIN = 8,
    POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN = 9,
    POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN = 10,
    POWER_SUPPLY_PROP_VOLTAGE_NOW = 11,
    POWER_SUPPLY_PROP_VOLTAGE_AVG = 12,
    POWER_SUPPLY_PROP_CURRENT_MAX = 13,
    POWER_SUPPLY_PROP_CURRENT_NOW = 14,
    POWER_SUPPLY_PROP_CURRENT_AVG = 15,
    POWER_SUPPLY_PROP_POWER_NOW = 16,
    POWER_SUPPLY_PROP_POWER_AVG = 17,
    POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN = 18,
    POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN = 19,
    POWER_SUPPLY_PROP_CHARGE_FULL = 20,
    POWER_SUPPLY_PROP_CHARGE_EMPTY = 21,
    POWER_SUPPLY_PROP_CHARGE_NOW = 22,
    POWER_SUPPLY_PROP_CHARGE_AVG = 23,
    POWER_SUPPLY_PROP_CHARGE_COUNTER = 24,
    POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN = 25,
    POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN = 26,
    POWER_SUPPLY_PROP_ENERGY_FULL = 27,
    POWER_SUPPLY_PROP_ENERGY_EMPTY = 28,
    POWER_SUPPLY_PROP_ENERGY_NOW = 29,
    POWER_SUPPLY_PROP_ENERGY_AVG = 30,
    POWER_SUPPLY_PROP_CAPACITY = 31,
    POWER_SUPPLY_PROP_CAPACITY_LEVEL = 32,
    POWER_SUPPLY_PROP_TEMP = 33,
    POWER_SUPPLY_PROP_TEMP_AMBIENT = 34,
    POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW = 35,
    POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG = 36,
    POWER_SUPPLY_PROP_TIME_TO_FULL_NOW = 37,
    POWER_SUPPLY_PROP_TIME_TO_FULL_AVG = 38,
    POWER_SUPPLY_PROP_TYPE = 39,
    POWER_SUPPLY_PROP_SCOPE = 40,
    POWER_SUPPLY_PROP_MODEL_NAME = 41,
    POWER_SUPPLY_PROP_MANUFACTURER = 42,
    POWER_SUPPLY_PROP_SERIAL_NUMBER = 43
} ;
enum power_supply_type {
    POWER_SUPPLY_TYPE_UNKNOWN = 0,
    POWER_SUPPLY_TYPE_BATTERY = 1,
    POWER_SUPPLY_TYPE_UPS = 2,
    POWER_SUPPLY_TYPE_MAINS = 3,
    POWER_SUPPLY_TYPE_USB = 4,
    POWER_SUPPLY_TYPE_USB_DCP = 5,
    POWER_SUPPLY_TYPE_USB_CDP = 6,
    POWER_SUPPLY_TYPE_USB_ACA = 7
} ;
union power_supply_propval {
   int intval ;
   char const *strval ;
};
struct power_supply {
   char const *name ;
   enum power_supply_type type ;
   enum power_supply_property *properties ;
   size_t num_properties ;
   char **supplied_to ;
   size_t num_supplicants ;
   int (*get_property)(struct power_supply * , enum power_supply_property , union power_supply_propval * ) ;
   int (*set_property)(struct power_supply * , enum power_supply_property , union power_supply_propval const * ) ;
   int (*property_is_writeable)(struct power_supply * , enum power_supply_property ) ;
   void (*external_power_changed)(struct power_supply * ) ;
   void (*set_charged)(struct power_supply * ) ;
   int use_for_apm ;
   struct device *dev ;
   struct work_struct changed_work ;
   struct led_trigger *charging_full_trig ;
   char *charging_full_trig_name ;
   struct led_trigger *charging_trig ;
   char *charging_trig_name ;
   struct led_trigger *full_trig ;
   char *full_trig_name ;
   struct led_trigger *online_trig ;
   char *online_trig_name ;
   struct led_trigger *charging_blink_full_solid_trig ;
   char *charging_blink_full_solid_trig_name ;
};
struct hid_collection {
   unsigned int type ;
   unsigned int usage ;
   unsigned int level ;
};
struct hid_usage {
   unsigned int hid ;
   unsigned int collection_index ;
   __u16 code ;
   __u8 type ;
   __s8 hat_min ;
   __s8 hat_max ;
   __s8 hat_dir ;
};
struct hid_input;
struct hid_input;
struct hid_report;
struct hid_field {
   unsigned int physical ;
   unsigned int logical ;
   unsigned int application ;
   struct hid_usage *usage ;
   unsigned int maxusage ;
   unsigned int flags ;
   unsigned int report_offset ;
   unsigned int report_size ;
   unsigned int report_count ;
   unsigned int report_type ;
   __s32 *value ;
   __s32 logical_minimum ;
   __s32 logical_maximum ;
   __s32 physical_minimum ;
   __s32 physical_maximum ;
   __s32 unit_exponent ;
   unsigned int unit ;
   struct hid_report *report ;
   unsigned int index ;
   struct hid_input *hidinput ;
   __u16 dpad ;
};
struct hid_device;
struct hid_report {
   struct list_head list ;
   unsigned int id ;
   unsigned int type ;
   struct hid_field *field[128U] ;
   unsigned int maxfield ;
   unsigned int size ;
   struct hid_device *device ;
};
struct hid_report_enum {
   unsigned int numbered ;
   struct list_head report_list ;
   struct hid_report *report_id_hash[256U] ;
};
struct hid_input {
   struct list_head list ;
   struct hid_report *report ;
   struct input_dev *input ;
};
enum hid_type {
    HID_TYPE_OTHER = 0,
    HID_TYPE_USBMOUSE = 1,
    HID_TYPE_USBNONE = 2
} ;
struct hid_driver;
struct hid_driver;
struct hid_ll_driver;
struct hid_ll_driver;
struct hid_device {
   __u8 *rdesc ;
   unsigned int rsize ;
   struct hid_collection *collection ;
   unsigned int collection_size ;
   unsigned int maxcollection ;
   unsigned int maxapplication ;
   __u16 bus ;
   __u32 vendor ;
   __u32 product ;
   __u32 version ;
   enum hid_type type ;
   unsigned int country ;
   struct hid_report_enum report_enum[3U] ;
   struct semaphore driver_lock ;
   struct device dev ;
   struct hid_driver *driver ;
   struct hid_ll_driver *ll_driver ;
   unsigned int status ;
   unsigned int claimed ;
   unsigned int quirks ;
   struct list_head inputs ;
   void *hiddev ;
   void *hidraw ;
   int minor ;
   int open ;
   char name[128U] ;
   char phys[64U] ;
   char uniq[64U] ;
   void *driver_data ;
   int (*ff_init)(struct hid_device * ) ;
   int (*hiddev_connect)(struct hid_device * , unsigned int ) ;
   void (*hiddev_disconnect)(struct hid_device * ) ;
   void (*hiddev_hid_event)(struct hid_device * , struct hid_field * , struct hid_usage * ,
                            __s32 ) ;
   void (*hiddev_report_event)(struct hid_device * , struct hid_report * ) ;
   int (*hid_get_raw_report)(struct hid_device * , unsigned char , __u8 * , size_t ,
                             unsigned char ) ;
   int (*hid_output_raw_report)(struct hid_device * , __u8 * , size_t , unsigned char ) ;
   unsigned short debug ;
   struct dentry *debug_dir ;
   struct dentry *debug_rdesc ;
   struct dentry *debug_events ;
   struct list_head debug_list ;
   wait_queue_head_t debug_wait ;
};
struct hid_report_id {
   __u32 report_type ;
};
struct hid_usage_id {
   __u32 usage_hid ;
   __u32 usage_type ;
   __u32 usage_code ;
};
struct hid_driver {
   char *name ;
   struct hid_device_id const *id_table ;
   struct list_head dyn_list ;
   spinlock_t dyn_lock ;
   int (*probe)(struct hid_device * , struct hid_device_id const * ) ;
   void (*remove)(struct hid_device * ) ;
   struct hid_report_id const *report_table ;
   int (*raw_event)(struct hid_device * , struct hid_report * , u8 * , int ) ;
   struct hid_usage_id const *usage_table ;
   int (*event)(struct hid_device * , struct hid_field * , struct hid_usage * , __s32 ) ;
   __u8 *(*report_fixup)(struct hid_device * , __u8 * , unsigned int * ) ;
   int (*input_mapping)(struct hid_device * , struct hid_input * , struct hid_field * ,
                        struct hid_usage * , unsigned long ** , int * ) ;
   int (*input_mapped)(struct hid_device * , struct hid_input * , struct hid_field * ,
                       struct hid_usage * , unsigned long ** , int * ) ;
   void (*feature_mapping)(struct hid_device * , struct hid_field * , struct hid_usage * ) ;
   int (*suspend)(struct hid_device * , pm_message_t ) ;
   int (*resume)(struct hid_device * ) ;
   int (*reset_resume)(struct hid_device * ) ;
   struct device_driver driver ;
};
struct hid_ll_driver {
   int (*start)(struct hid_device * ) ;
   void (*stop)(struct hid_device * ) ;
   int (*open)(struct hid_device * ) ;
   void (*close)(struct hid_device * ) ;
   int (*power)(struct hid_device * , int ) ;
   int (*hidinput_input_event)(struct input_dev * , unsigned int , unsigned int ,
                               int ) ;
   int (*parse)(struct hid_device * ) ;
};
struct wacom_data {
   __u16 tool ;
   __u16 butstate ;
   __u8 whlstate ;
   __u8 features ;
   __u32 id ;
   __u32 serial ;
   unsigned char high_speed ;
   int battery_capacity ;
   struct power_supply battery ;
   struct power_supply ac ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
__inline static void __set_bit(int nr , unsigned long volatile *addr )
{ long volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (long volatile *)addr;
  __asm__ volatile ("bts %1,%0": "+m" (*__cil_tmp3): "Ir" (nr): "memory");
  return;
}
}
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
extern __kernel_size_t strnlen(char const * , __kernel_size_t ) ;
extern struct module __this_module ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void *__VERIFIER_nondet_pointer(void) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_key(struct input_dev *dev , unsigned int code ,
                                      int value )
{ int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = value != 0;
  input_event(dev, 1U, code, __cil_tmp4);
  }
  return;
}
}
__inline static void input_report_rel(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  {
  input_event(dev, 2U, code, value);
  }
  return;
}
}
__inline static void input_report_abs(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  {
  input_event(dev, 3U, code, value);
  }
  return;
}
}
__inline static void input_sync(struct input_dev *dev )
{
  {
  {
  input_event(dev, 0U, 0U, 0);
  }
  return;
}
}
extern void input_set_capability(struct input_dev * , unsigned int , unsigned int ) ;
extern void input_set_abs_params(struct input_dev * , unsigned int , int , int ,
                                 int , int ) ;
__inline static int input_abs_get_max(struct input_dev *dev , unsigned int axis )
{ int tmp ;
  struct input_absinfo *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct input_absinfo *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct input_absinfo *__cil_tmp13 ;
  struct input_absinfo *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  {
  {
  __cil_tmp4 = (struct input_absinfo *)0;
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = (unsigned long )dev;
  __cil_tmp7 = __cil_tmp6 + 424;
  __cil_tmp8 = *((struct input_absinfo **)__cil_tmp7);
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  if (__cil_tmp9 != __cil_tmp5) {
    __cil_tmp10 = (unsigned long )axis;
    __cil_tmp11 = (unsigned long )dev;
    __cil_tmp12 = __cil_tmp11 + 424;
    __cil_tmp13 = *((struct input_absinfo **)__cil_tmp12);
    __cil_tmp14 = __cil_tmp13 + __cil_tmp10;
    __cil_tmp15 = (unsigned long )__cil_tmp14;
    __cil_tmp16 = __cil_tmp15 + 8;
    tmp = *((__s32 *)__cil_tmp16);
  } else {
    tmp = 0;
  }
  }
  return (tmp);
}
}
extern int power_supply_register(struct device * , struct power_supply * ) ;
extern void power_supply_unregister(struct power_supply * ) ;
extern int power_supply_powers(struct power_supply * , struct device * ) ;
__inline static void *hid_get_drvdata(struct hid_device *hdev )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device const *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )hdev;
  __cil_tmp4 = __cil_tmp3 + 6376;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device const *)__cil_tmp5;
  tmp = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp);
}
}
__inline static void hid_set_drvdata(struct hid_device *hdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )hdev;
  __cil_tmp4 = __cil_tmp3 + 6376;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern int __hid_register_driver(struct hid_driver * , struct module * , char const * ) ;
extern void hid_unregister_driver(struct hid_driver * ) ;
extern int hid_connect(struct hid_device * , unsigned int ) ;
extern void hid_disconnect(struct hid_device * ) ;
__inline static int hid_parse(struct hid_device *hdev )
{ int ret ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct hid_ll_driver *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int (*__cil_tmp12)(struct hid_device * ) ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  {
  {
  __cil_tmp3 = (unsigned long )hdev;
  __cil_tmp4 = __cil_tmp3 + 7544;
  __cil_tmp5 = *((unsigned int *)__cil_tmp4);
  __cil_tmp6 = __cil_tmp5 & 2U;
  if (__cil_tmp6 != 0U) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp7 = (unsigned long )hdev;
  __cil_tmp8 = __cil_tmp7 + 7536;
  __cil_tmp9 = *((struct hid_ll_driver **)__cil_tmp8);
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = __cil_tmp10 + 48;
  __cil_tmp12 = *((int (**)(struct hid_device * ))__cil_tmp11);
  ret = (*__cil_tmp12)(hdev);
  }
  if (ret == 0) {
    __cil_tmp13 = (unsigned long )hdev;
    __cil_tmp14 = __cil_tmp13 + 7544;
    __cil_tmp15 = (unsigned long )hdev;
    __cil_tmp16 = __cil_tmp15 + 7544;
    __cil_tmp17 = *((unsigned int *)__cil_tmp16);
    *((unsigned int *)__cil_tmp14) = __cil_tmp17 | 2U;
  } else {
  }
  return (ret);
}
}
__inline static int hid_hw_start(struct hid_device *hdev , unsigned int connect_mask )
{ int ret ;
  int tmp ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct hid_ll_driver *__cil_tmp7 ;
  int (*__cil_tmp8)(struct hid_device * ) ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct hid_ll_driver *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void (*__cil_tmp14)(struct hid_device * ) ;
  {
  {
  __cil_tmp5 = (unsigned long )hdev;
  __cil_tmp6 = __cil_tmp5 + 7536;
  __cil_tmp7 = *((struct hid_ll_driver **)__cil_tmp6);
  __cil_tmp8 = *((int (**)(struct hid_device * ))__cil_tmp7);
  tmp = (*__cil_tmp8)(hdev);
  ret = tmp;
  }
  if (ret != 0) {
    return (ret);
  } else
  if (connect_mask == 0U) {
    return (ret);
  } else {
  }
  {
  ret = hid_connect(hdev, connect_mask);
  }
  if (ret != 0) {
    {
    __cil_tmp9 = (unsigned long )hdev;
    __cil_tmp10 = __cil_tmp9 + 7536;
    __cil_tmp11 = *((struct hid_ll_driver **)__cil_tmp10);
    __cil_tmp12 = (unsigned long )__cil_tmp11;
    __cil_tmp13 = __cil_tmp12 + 8;
    __cil_tmp14 = *((void (**)(struct hid_device * ))__cil_tmp13);
    (*__cil_tmp14)(hdev);
    }
  } else {
  }
  return (ret);
}
}
__inline static void hid_hw_stop(struct hid_device *hdev )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct hid_ll_driver *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void (*__cil_tmp7)(struct hid_device * ) ;
  {
  {
  hid_disconnect(hdev);
  __cil_tmp2 = (unsigned long )hdev;
  __cil_tmp3 = __cil_tmp2 + 7536;
  __cil_tmp4 = *((struct hid_ll_driver **)__cil_tmp3);
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 + 8;
  __cil_tmp7 = *((void (**)(struct hid_device * ))__cil_tmp6);
  (*__cil_tmp7)(hdev);
  }
  return;
}
}
static unsigned short batcap[8U] =
  { (unsigned short)1, (unsigned short)15, (unsigned short)25, (unsigned short)35,
        (unsigned short)50, (unsigned short)70, (unsigned short)100, (unsigned short)0};
static enum power_supply_property wacom_battery_props[3U] = { (enum power_supply_property )3, (enum power_supply_property )31, (enum power_supply_property )40};
static enum power_supply_property wacom_ac_props[3U] = { (enum power_supply_property )3, (enum power_supply_property )4, (enum power_supply_property )40};
static int wacom_battery_get_property(struct power_supply *psy , enum power_supply_property psp ,
                                      union power_supply_propval *val )
{ struct wacom_data *wdata ;
  struct power_supply const *__mptr ;
  int power_state ;
  int ret ;
  struct wacom_data *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned short __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  {
  __mptr = (struct power_supply const *)psy;
  __cil_tmp8 = (struct wacom_data *)__mptr;
  wdata = __cil_tmp8 + 0xffffffffffffffe8UL;
  __cil_tmp9 = (unsigned long )wdata;
  __cil_tmp10 = __cil_tmp9 + 20;
  __cil_tmp11 = *((int *)__cil_tmp10);
  __cil_tmp12 = __cil_tmp11 * 2UL;
  __cil_tmp13 = (unsigned long )(batcap) + __cil_tmp12;
  __cil_tmp14 = *((unsigned short *)__cil_tmp13);
  power_state = (int )__cil_tmp14;
  ret = 0;
  {
  __cil_tmp15 = (unsigned int )psp;
  if ((int )__cil_tmp15 == 3) {
    goto case_3;
  } else
  if ((int )__cil_tmp15 == 40) {
    goto case_40;
  } else
  if ((int )__cil_tmp15 == 31) {
    goto case_31;
  } else {
    {
    goto switch_default;
    if (0) {
      case_3:
      *((int *)val) = 1;
      goto ldv_19724;
      case_40:
      *((int *)val) = 2;
      goto ldv_19724;
      case_31: ;
      if (power_state == 0) {
        *((int *)val) = 100;
      } else {
        *((int *)val) = power_state;
      }
      goto ldv_19724;
      switch_default:
      ret = -22;
      goto ldv_19724;
    } else {
      switch_break: ;
    }
    }
  }
  }
  ldv_19724: ;
  return (ret);
}
}
static int wacom_ac_get_property(struct power_supply *psy , enum power_supply_property psp ,
                                 union power_supply_propval *val )
{ struct wacom_data *wdata ;
  struct power_supply const *__mptr ;
  int power_state ;
  int ret ;
  struct wacom_data *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned short __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  {
  __mptr = (struct power_supply const *)psy;
  __cil_tmp8 = (struct wacom_data *)__mptr;
  wdata = __cil_tmp8 + 0xfffffffffffffee0UL;
  __cil_tmp9 = (unsigned long )wdata;
  __cil_tmp10 = __cil_tmp9 + 20;
  __cil_tmp11 = *((int *)__cil_tmp10);
  __cil_tmp12 = __cil_tmp11 * 2UL;
  __cil_tmp13 = (unsigned long )(batcap) + __cil_tmp12;
  __cil_tmp14 = *((unsigned short *)__cil_tmp13);
  power_state = (int )__cil_tmp14;
  ret = 0;
  {
  __cil_tmp15 = (unsigned int )psp;
  if ((int )__cil_tmp15 == 3) {
    goto case_3;
  } else
  if ((int )__cil_tmp15 == 4) {
    goto case_4;
  } else
  if ((int )__cil_tmp15 == 40) {
    goto case_40;
  } else {
    {
    goto switch_default;
    if (0) {
      case_3: ;
      case_4: ;
      if (power_state == 0) {
        *((int *)val) = 1;
      } else {
        *((int *)val) = 0;
      }
      goto ldv_19740;
      case_40:
      *((int *)val) = 2;
      goto ldv_19740;
      switch_default:
      ret = -22;
      goto ldv_19740;
    } else {
      switch_break: ;
    }
    }
  }
  }
  ldv_19740: ;
  return (ret);
}
}
static void wacom_set_features(struct hid_device *hdev )
{ int ret ;
  __u8 rep_data[2U] ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int (*__cil_tmp10)(struct hid_device * , __u8 * , size_t , unsigned char ) ;
  __u8 *__cil_tmp11 ;
  {
  {
  __cil_tmp4 = 0 * 1UL;
  __cil_tmp5 = (unsigned long )(rep_data) + __cil_tmp4;
  *((__u8 *)__cil_tmp5) = (__u8 )3U;
  __cil_tmp6 = 1 * 1UL;
  __cil_tmp7 = (unsigned long )(rep_data) + __cil_tmp6;
  *((__u8 *)__cil_tmp7) = (__u8 )32U;
  __cil_tmp8 = (unsigned long )hdev;
  __cil_tmp9 = __cil_tmp8 + 7912;
  __cil_tmp10 = *((int (**)(struct hid_device * , __u8 * , size_t , unsigned char ))__cil_tmp9);
  __cil_tmp11 = (__u8 *)(& rep_data);
  ret = (*__cil_tmp10)(hdev, __cil_tmp11, 2UL, (unsigned char)2);
  }
  return;
}
}
static void wacom_poke(struct hid_device *hdev , u8 speed )
{ struct wacom_data *wdata ;
  void *tmp ;
  int limit ;
  int ret ;
  char rep_data[2U] ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  int (*__cil_tmp16)(struct hid_device * , __u8 * , size_t , unsigned char ) ;
  __u8 *__cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  int (*__cil_tmp27)(struct hid_device * , __u8 * , size_t , unsigned char ) ;
  __u8 *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct device *__cil_tmp33 ;
  struct device const *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  char __cil_tmp37 ;
  int __cil_tmp38 ;
  {
  {
  tmp = hid_get_drvdata(hdev);
  wdata = (struct wacom_data *)tmp;
  __cil_tmp10 = 0 * 1UL;
  __cil_tmp11 = (unsigned long )(rep_data) + __cil_tmp10;
  *((char *)__cil_tmp11) = (char)3;
  __cil_tmp12 = 1 * 1UL;
  __cil_tmp13 = (unsigned long )(rep_data) + __cil_tmp12;
  *((char *)__cil_tmp13) = (char)0;
  limit = 3;
  }
  ldv_19756:
  {
  __cil_tmp14 = (unsigned long )hdev;
  __cil_tmp15 = __cil_tmp14 + 7912;
  __cil_tmp16 = *((int (**)(struct hid_device * , __u8 * , size_t , unsigned char ))__cil_tmp15);
  __cil_tmp17 = (__u8 *)(& rep_data);
  ret = (*__cil_tmp16)(hdev, __cil_tmp17, 2UL, (unsigned char)2);
  }
  if (ret < 0) {
    tmp___0 = limit;
    limit = limit - 1;
    if (tmp___0 > 0) {
      goto ldv_19756;
    } else {
      goto ldv_19757;
    }
  } else {
    goto ldv_19757;
  }
  ldv_19757: ;
  if (ret >= 0) {
    {
    __cil_tmp18 = (unsigned int )speed;
    if (__cil_tmp18 == 0U) {
      __cil_tmp19 = 0 * 1UL;
      __cil_tmp20 = (unsigned long )(rep_data) + __cil_tmp19;
      *((char *)__cil_tmp20) = (char)5;
    } else {
      __cil_tmp21 = 0 * 1UL;
      __cil_tmp22 = (unsigned long )(rep_data) + __cil_tmp21;
      *((char *)__cil_tmp22) = (char)6;
    }
    }
    __cil_tmp23 = 1 * 1UL;
    __cil_tmp24 = (unsigned long )(rep_data) + __cil_tmp23;
    *((char *)__cil_tmp24) = (char)0;
    limit = 3;
    ldv_19758:
    {
    __cil_tmp25 = (unsigned long )hdev;
    __cil_tmp26 = __cil_tmp25 + 7912;
    __cil_tmp27 = *((int (**)(struct hid_device * , __u8 * , size_t , unsigned char ))__cil_tmp26);
    __cil_tmp28 = (__u8 *)(& rep_data);
    ret = (*__cil_tmp27)(hdev, __cil_tmp28, 2UL, (unsigned char)2);
    }
    if (ret < 0) {
      tmp___1 = limit;
      limit = limit - 1;
      if (tmp___1 > 0) {
        goto ldv_19758;
      } else {
        goto ldv_19759;
      }
    } else {
      goto ldv_19759;
    }
    ldv_19759: ;
    if (ret >= 0) {
      __cil_tmp29 = (unsigned long )wdata;
      __cil_tmp30 = __cil_tmp29 + 16;
      *((unsigned char *)__cil_tmp30) = speed;
      return;
    } else {
    }
  } else {
  }
  {
  __cil_tmp31 = (unsigned long )hdev;
  __cil_tmp32 = __cil_tmp31 + 6376;
  __cil_tmp33 = (struct device *)__cil_tmp32;
  __cil_tmp34 = (struct device const *)__cil_tmp33;
  __cil_tmp35 = 0 * 1UL;
  __cil_tmp36 = (unsigned long )(rep_data) + __cil_tmp35;
  __cil_tmp37 = *((char *)__cil_tmp36);
  __cil_tmp38 = (int )__cil_tmp37;
  dev_warn(__cil_tmp34, "failed to poke device, command %d, err %d\n", __cil_tmp38,
           ret);
  }
  return;
}
}
static ssize_t wacom_show_speed(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{ struct wacom_data *wdata ;
  void *tmp ;
  int tmp___0 ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned char __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  {
  __cil_tmp7 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp7);
  wdata = (struct wacom_data *)tmp;
  __cil_tmp8 = (unsigned long )wdata;
  __cil_tmp9 = __cil_tmp8 + 16;
  __cil_tmp10 = *((unsigned char *)__cil_tmp9);
  __cil_tmp11 = (int )__cil_tmp10;
  tmp___0 = snprintf(buf, 4096UL, "%i\n", __cil_tmp11);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t wacom_store_speed(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{ struct hid_device *hdev ;
  struct device const *__mptr ;
  int new_speed ;
  int tmp ;
  __kernel_size_t tmp___0 ;
  struct hid_device *__cil_tmp10 ;
  int *__cil_tmp11 ;
  int __cil_tmp12 ;
  int *__cil_tmp13 ;
  int __cil_tmp14 ;
  u8 __cil_tmp15 ;
  int __cil_tmp16 ;
  u8 __cil_tmp17 ;
  int *__cil_tmp18 ;
  int __cil_tmp19 ;
  int *__cil_tmp20 ;
  int __cil_tmp21 ;
  u8 __cil_tmp22 ;
  int __cil_tmp23 ;
  u8 __cil_tmp24 ;
  {
  {
  __mptr = (struct device const *)dev;
  __cil_tmp10 = (struct hid_device *)__mptr;
  hdev = __cil_tmp10 + 0xffffffffffffe718UL;
  tmp = sscanf(buf, "%1d", & new_speed);
  }
  if (tmp != 1) {
    return (-22L);
  } else {
  }
  {
  __cil_tmp11 = & new_speed;
  __cil_tmp12 = *__cil_tmp11;
  if (__cil_tmp12 == 0) {
    {
    __cil_tmp13 = & new_speed;
    __cil_tmp14 = *__cil_tmp13;
    __cil_tmp15 = (u8 )__cil_tmp14;
    __cil_tmp16 = (int )__cil_tmp15;
    __cil_tmp17 = (u8 )__cil_tmp16;
    wacom_poke(hdev, __cil_tmp17);
    tmp___0 = strnlen(buf, 4096UL);
    }
    return ((ssize_t )tmp___0);
  } else {
    {
    __cil_tmp18 = & new_speed;
    __cil_tmp19 = *__cil_tmp18;
    if (__cil_tmp19 == 1) {
      {
      __cil_tmp20 = & new_speed;
      __cil_tmp21 = *__cil_tmp20;
      __cil_tmp22 = (u8 )__cil_tmp21;
      __cil_tmp23 = (int )__cil_tmp22;
      __cil_tmp24 = (u8 )__cil_tmp23;
      wacom_poke(hdev, __cil_tmp24);
      tmp___0 = strnlen(buf, 4096UL);
      }
      return ((ssize_t )tmp___0);
    } else {
      return (-22L);
    }
    }
  }
  }
}
}
static struct device_attribute dev_attr_speed = {{"speed", (umode_t )436U, (struct lock_class_key *)0, {{{(char)0}, {(char)0},
                                                            {(char)0}, {(char)0},
                                                            {(char)0}, {(char)0},
                                                            {(char)0}, {(char)0}}}},
    & wacom_show_speed, & wacom_store_speed};
static int wacom_gr_parse_report(struct hid_device *hdev , struct wacom_data *wdata ,
                                 struct input_dev *input , unsigned char *data )
{ int tool ;
  int x ;
  int y ;
  int rw ;
  int tmp ;
  int tmp___0 ;
  __le16 *__cil_tmp11 ;
  __le16 *__cil_tmp12 ;
  __le16 __cil_tmp13 ;
  __le16 *__cil_tmp14 ;
  __le16 *__cil_tmp15 ;
  __le16 __cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  unsigned char __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned char *__cil_tmp21 ;
  unsigned char __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  unsigned char *__cil_tmp25 ;
  unsigned char __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  __u16 __cil_tmp29 ;
  int __cil_tmp30 ;
  __u16 __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  __u16 __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  __u16 __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned char *__cil_tmp38 ;
  unsigned char __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned char *__cil_tmp42 ;
  unsigned char __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned char *__cil_tmp46 ;
  unsigned char __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned char *__cil_tmp49 ;
  unsigned char __cil_tmp50 ;
  int __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned char *__cil_tmp53 ;
  unsigned char __cil_tmp54 ;
  int __cil_tmp55 ;
  int __cil_tmp56 ;
  unsigned char *__cil_tmp57 ;
  unsigned char __cil_tmp58 ;
  int __cil_tmp59 ;
  int __cil_tmp60 ;
  unsigned char *__cil_tmp61 ;
  unsigned char __cil_tmp62 ;
  int __cil_tmp63 ;
  int __cil_tmp64 ;
  unsigned char *__cil_tmp65 ;
  unsigned char __cil_tmp66 ;
  int __cil_tmp67 ;
  int __cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned char *__cil_tmp70 ;
  unsigned char __cil_tmp71 ;
  int __cil_tmp72 ;
  int __cil_tmp73 ;
  unsigned char *__cil_tmp74 ;
  unsigned char __cil_tmp75 ;
  int __cil_tmp76 ;
  int __cil_tmp77 ;
  unsigned char *__cil_tmp78 ;
  unsigned char __cil_tmp79 ;
  int __cil_tmp80 ;
  int __cil_tmp81 ;
  unsigned char *__cil_tmp82 ;
  unsigned char __cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  unsigned char *__cil_tmp86 ;
  unsigned char __cil_tmp87 ;
  int __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  __u16 __cil_tmp91 ;
  int __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  int __cil_tmp95 ;
  int __cil_tmp96 ;
  unsigned char *__cil_tmp97 ;
  unsigned char __cil_tmp98 ;
  int __cil_tmp99 ;
  int __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  int __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  {
  tool = 0;
  __cil_tmp11 = (__le16 *)data;
  __cil_tmp12 = __cil_tmp11 + 2U;
  __cil_tmp13 = *__cil_tmp12;
  x = (int )__cil_tmp13;
  __cil_tmp14 = (__le16 *)data;
  __cil_tmp15 = __cil_tmp14 + 4U;
  __cil_tmp16 = *__cil_tmp15;
  y = (int )__cil_tmp16;
  {
  __cil_tmp17 = data + 1UL;
  __cil_tmp18 = *__cil_tmp17;
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = __cil_tmp19 & 144;
  if (__cil_tmp20 != 0) {
    {
    __cil_tmp21 = data + 1UL;
    __cil_tmp22 = *__cil_tmp21;
    __cil_tmp23 = (int )__cil_tmp22;
    __cil_tmp24 = __cil_tmp23 >> 5;
    if ((__cil_tmp24 & 3) == 0) {
      goto case_0;
    } else
    if ((__cil_tmp24 & 3) == 1) {
      goto case_1;
    } else
    if ((__cil_tmp24 & 3) == 2) {
      goto case_2;
    } else
    if ((__cil_tmp24 & 3) == 3) {
      goto case_3;
    } else
    if (0) {
      case_0:
      tool = 320;
      goto ldv_19788;
      case_1:
      tool = 321;
      goto ldv_19788;
      case_2: ;
      case_3:
      tool = 326;
      goto ldv_19788;
    } else {
      switch_break: ;
    }
    }
    ldv_19788: ;
    {
    __cil_tmp25 = data + 1UL;
    __cil_tmp26 = *__cil_tmp25;
    __cil_tmp27 = (int )__cil_tmp26;
    __cil_tmp28 = __cil_tmp27 & 16;
    if (__cil_tmp28 == 0) {
      tool = 0;
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp29 = *((__u16 *)wdata);
  __cil_tmp30 = (int )__cil_tmp29;
  if (__cil_tmp30 != tool) {
    {
    __cil_tmp31 = *((__u16 *)wdata);
    __cil_tmp32 = (unsigned int )__cil_tmp31;
    if (__cil_tmp32 != 0U) {
      {
      __cil_tmp33 = *((__u16 *)wdata);
      __cil_tmp34 = (unsigned int )__cil_tmp33;
      if (__cil_tmp34 == 326U) {
        {
        input_report_key(input, 272U, 0);
        input_report_key(input, 273U, 0);
        input_report_key(input, 274U, 0);
        tmp = input_abs_get_max(input, 25U);
        input_report_abs(input, 25U, tmp);
        }
      } else {
        {
        input_report_key(input, 330U, 0);
        input_report_key(input, 331U, 0);
        input_report_key(input, 332U, 0);
        input_report_abs(input, 24U, 0);
        }
      }
      }
      {
      __cil_tmp35 = *((__u16 *)wdata);
      __cil_tmp36 = (unsigned int )__cil_tmp35;
      input_report_key(input, __cil_tmp36, 0);
      input_sync(input);
      }
    } else {
    }
    }
    *((__u16 *)wdata) = (__u16 )tool;
    if (tool != 0) {
      {
      __cil_tmp37 = (unsigned int )tool;
      input_report_key(input, __cil_tmp37, 1);
      }
    } else {
    }
  } else {
  }
  }
  if (tool != 0) {
    {
    input_report_abs(input, 0U, x);
    input_report_abs(input, 1U, y);
    }
    {
    __cil_tmp38 = data + 1UL;
    __cil_tmp39 = *__cil_tmp38;
    __cil_tmp40 = (int )__cil_tmp39;
    __cil_tmp41 = __cil_tmp40 >> 5;
    if ((__cil_tmp41 & 3) == 2) {
      goto case_2___0;
    } else
    if ((__cil_tmp41 & 3) == 3) {
      goto case_3___0;
    } else {
      {
      goto switch_default;
      if (0) {
        case_2___0:
        {
        __cil_tmp42 = data + 1UL;
        __cil_tmp43 = *__cil_tmp42;
        __cil_tmp44 = (int )__cil_tmp43;
        __cil_tmp45 = __cil_tmp44 & 4;
        input_report_key(input, 274U, __cil_tmp45);
        }
        {
        __cil_tmp46 = data + 6UL;
        __cil_tmp47 = *__cil_tmp46;
        __cil_tmp48 = (int )__cil_tmp47;
        if (__cil_tmp48 & 1) {
          rw = -1;
        } else {
          __cil_tmp49 = data + 6UL;
          __cil_tmp50 = *__cil_tmp49;
          __cil_tmp51 = (int )__cil_tmp50;
          __cil_tmp52 = __cil_tmp51 & 2;
          rw = __cil_tmp52 != 0;
        }
        }
        {
        input_report_rel(input, 8U, rw);
        }
        case_3___0:
        {
        __cil_tmp53 = data + 1UL;
        __cil_tmp54 = *__cil_tmp53;
        __cil_tmp55 = (int )__cil_tmp54;
        __cil_tmp56 = __cil_tmp55 & 1;
        input_report_key(input, 272U, __cil_tmp56);
        __cil_tmp57 = data + 1UL;
        __cil_tmp58 = *__cil_tmp57;
        __cil_tmp59 = (int )__cil_tmp58;
        __cil_tmp60 = __cil_tmp59 & 2;
        input_report_key(input, 273U, __cil_tmp60);
        __cil_tmp61 = data + 6UL;
        __cil_tmp62 = *__cil_tmp61;
        __cil_tmp63 = (int )__cil_tmp62;
        __cil_tmp64 = __cil_tmp63 >> 2;
        rw = 44 - __cil_tmp64;
        }
        if (rw < 0) {
          rw = 0;
        } else
        if (rw > 31) {
          rw = 31;
        } else {
        }
        {
        input_report_abs(input, 25U, rw);
        }
        goto ldv_19794;
        switch_default:
        {
        __cil_tmp65 = data + 1UL;
        __cil_tmp66 = *__cil_tmp65;
        __cil_tmp67 = (int )__cil_tmp66;
        __cil_tmp68 = __cil_tmp67 & 8;
        __cil_tmp69 = __cil_tmp68 << 5;
        __cil_tmp70 = data + 6UL;
        __cil_tmp71 = *__cil_tmp70;
        __cil_tmp72 = (int )__cil_tmp71;
        __cil_tmp73 = __cil_tmp72 | __cil_tmp69;
        input_report_abs(input, 24U, __cil_tmp73);
        __cil_tmp74 = data + 1UL;
        __cil_tmp75 = *__cil_tmp74;
        __cil_tmp76 = (int )__cil_tmp75;
        __cil_tmp77 = __cil_tmp76 & 1;
        input_report_key(input, 330U, __cil_tmp77);
        __cil_tmp78 = data + 1UL;
        __cil_tmp79 = *__cil_tmp78;
        __cil_tmp80 = (int )__cil_tmp79;
        __cil_tmp81 = __cil_tmp80 & 2;
        input_report_key(input, 331U, __cil_tmp81);
        }
        if (tool == 320) {
          {
          __cil_tmp82 = data + 1UL;
          __cil_tmp83 = *__cil_tmp82;
          __cil_tmp84 = (int )__cil_tmp83;
          __cil_tmp85 = __cil_tmp84 & 4;
          if (__cil_tmp85 != 0) {
            tmp___0 = 1;
          } else {
            tmp___0 = 0;
          }
          }
        } else {
          tmp___0 = 0;
        }
        {
        input_report_key(input, 332U, tmp___0);
        }
        goto ldv_19794;
      } else {
        switch_break___0: ;
      }
      }
    }
    }
    ldv_19794:
    {
    input_sync(input);
    }
  } else {
  }
  __cil_tmp86 = data + 7UL;
  __cil_tmp87 = *__cil_tmp86;
  __cil_tmp88 = (int )__cil_tmp87;
  rw = __cil_tmp88 & 3;
  {
  __cil_tmp89 = (unsigned long )wdata;
  __cil_tmp90 = __cil_tmp89 + 2;
  __cil_tmp91 = *((__u16 *)__cil_tmp90);
  __cil_tmp92 = (int )__cil_tmp91;
  if (__cil_tmp92 != rw) {
    {
    __cil_tmp93 = (unsigned long )wdata;
    __cil_tmp94 = __cil_tmp93 + 2;
    *((__u16 *)__cil_tmp94) = (__u16 )rw;
    __cil_tmp95 = rw & 2;
    input_report_key(input, 256U, __cil_tmp95);
    __cil_tmp96 = rw & 1;
    input_report_key(input, 257U, __cil_tmp96);
    input_report_key(input, 325U, 240);
    input_event(input, 4U, 0U, 240);
    input_sync(input);
    }
  } else {
  }
  }
  __cil_tmp97 = data + 7UL;
  __cil_tmp98 = *__cil_tmp97;
  __cil_tmp99 = (int )__cil_tmp98;
  __cil_tmp100 = __cil_tmp99 >> 2;
  rw = __cil_tmp100 & 7;
  {
  __cil_tmp101 = (unsigned long )wdata;
  __cil_tmp102 = __cil_tmp101 + 20;
  __cil_tmp103 = *((int *)__cil_tmp102);
  if (__cil_tmp103 != rw) {
    __cil_tmp104 = (unsigned long )wdata;
    __cil_tmp105 = __cil_tmp104 + 20;
    *((int *)__cil_tmp105) = rw;
  } else {
  }
  }
  return (1);
}
}
static void wacom_i4_parse_button_report(struct wacom_data *wdata , struct input_dev *input ,
                                         unsigned char *data )
{ __u16 new_butstate ;
  __u8 new_whlstate ;
  __u8 sync ;
  unsigned char *__cil_tmp7 ;
  int __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  __u8 __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  signed char __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  unsigned char __cil_tmp20 ;
  short __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  unsigned char __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  short __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  __u16 __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  int __cil_tmp50 ;
  int __cil_tmp51 ;
  int __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  {
  sync = (__u8 )0U;
  __cil_tmp7 = data + 1UL;
  new_whlstate = *__cil_tmp7;
  {
  __cil_tmp8 = (int )new_whlstate;
  __cil_tmp9 = (unsigned long )wdata;
  __cil_tmp10 = __cil_tmp9 + 4;
  __cil_tmp11 = *((__u8 *)__cil_tmp10);
  __cil_tmp12 = (int )__cil_tmp11;
  if (__cil_tmp12 != __cil_tmp8) {
    __cil_tmp13 = (unsigned long )wdata;
    __cil_tmp14 = __cil_tmp13 + 4;
    *((__u8 *)__cil_tmp14) = new_whlstate;
    {
    __cil_tmp15 = (signed char )new_whlstate;
    __cil_tmp16 = (int )__cil_tmp15;
    if (__cil_tmp16 < 0) {
      {
      input_report_key(input, 330U, 1);
      __cil_tmp17 = (int )new_whlstate;
      __cil_tmp18 = __cil_tmp17 & 127;
      input_report_abs(input, 8U, __cil_tmp18);
      input_report_key(input, 325U, 1);
      }
    } else {
      {
      input_report_key(input, 330U, 0);
      input_report_abs(input, 8U, 0);
      input_report_key(input, 325U, 0);
      }
    }
    }
    sync = (__u8 )1U;
  } else {
  }
  }
  __cil_tmp19 = data + 2UL;
  __cil_tmp20 = *__cil_tmp19;
  __cil_tmp21 = (short )__cil_tmp20;
  __cil_tmp22 = (int )__cil_tmp21;
  __cil_tmp23 = __cil_tmp22 & 1;
  __cil_tmp24 = data + 3UL;
  __cil_tmp25 = *__cil_tmp24;
  __cil_tmp26 = (int )__cil_tmp25;
  __cil_tmp27 = __cil_tmp26 << 1;
  __cil_tmp28 = (short )__cil_tmp27;
  __cil_tmp29 = (int )__cil_tmp28;
  __cil_tmp30 = __cil_tmp29 | __cil_tmp23;
  new_butstate = (__u16 )__cil_tmp30;
  {
  __cil_tmp31 = (int )new_butstate;
  __cil_tmp32 = (unsigned long )wdata;
  __cil_tmp33 = __cil_tmp32 + 2;
  __cil_tmp34 = *((__u16 *)__cil_tmp33);
  __cil_tmp35 = (int )__cil_tmp34;
  if (__cil_tmp35 != __cil_tmp31) {
    {
    __cil_tmp36 = (unsigned long )wdata;
    __cil_tmp37 = __cil_tmp36 + 2;
    *((__u16 *)__cil_tmp37) = new_butstate;
    __cil_tmp38 = (int )new_butstate;
    __cil_tmp39 = __cil_tmp38 & 1;
    input_report_key(input, 256U, __cil_tmp39);
    __cil_tmp40 = (int )new_butstate;
    __cil_tmp41 = __cil_tmp40 & 2;
    input_report_key(input, 257U, __cil_tmp41);
    __cil_tmp42 = (int )new_butstate;
    __cil_tmp43 = __cil_tmp42 & 4;
    input_report_key(input, 258U, __cil_tmp43);
    __cil_tmp44 = (int )new_butstate;
    __cil_tmp45 = __cil_tmp44 & 8;
    input_report_key(input, 259U, __cil_tmp45);
    __cil_tmp46 = (int )new_butstate;
    __cil_tmp47 = __cil_tmp46 & 16;
    input_report_key(input, 260U, __cil_tmp47);
    __cil_tmp48 = (int )new_butstate;
    __cil_tmp49 = __cil_tmp48 & 32;
    input_report_key(input, 261U, __cil_tmp49);
    __cil_tmp50 = (int )new_butstate;
    __cil_tmp51 = __cil_tmp50 & 64;
    input_report_key(input, 262U, __cil_tmp51);
    __cil_tmp52 = (int )new_butstate;
    __cil_tmp53 = __cil_tmp52 & 128;
    input_report_key(input, 263U, __cil_tmp53);
    __cil_tmp54 = (int )new_butstate;
    __cil_tmp55 = __cil_tmp54 & 256;
    input_report_key(input, 264U, __cil_tmp55);
    input_report_key(input, 325U, 1);
    sync = (__u8 )1U;
    }
  } else {
  }
  }
  {
  __cil_tmp56 = (unsigned int )sync;
  if (__cil_tmp56 != 0U) {
    {
    input_report_abs(input, 40U, 15);
    input_event(input, 4U, 0U, -1);
    input_sync(input);
    }
  } else {
  }
  }
  return;
}
}
static void wacom_i4_parse_pen_report(struct wacom_data *wdata , struct input_dev *input ,
                                      unsigned char *data )
{ __u16 x ;
  __u16 y ;
  __u16 pressure ;
  __u8 distance ;
  unsigned char *__cil_tmp8 ;
  unsigned char __cil_tmp9 ;
  __u16 __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  __u32 __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  unsigned char __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned char *__cil_tmp23 ;
  unsigned char __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  unsigned char *__cil_tmp28 ;
  unsigned char __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned char *__cil_tmp32 ;
  unsigned char __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned char *__cil_tmp41 ;
  unsigned char __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned char *__cil_tmp45 ;
  unsigned char __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned char *__cil_tmp49 ;
  unsigned char __cil_tmp50 ;
  int __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned char *__cil_tmp53 ;
  unsigned char __cil_tmp54 ;
  int __cil_tmp55 ;
  int __cil_tmp56 ;
  unsigned char *__cil_tmp57 ;
  unsigned char __cil_tmp58 ;
  int __cil_tmp59 ;
  int __cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  int __cil_tmp63 ;
  int __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  __u32 __cil_tmp67 ;
  unsigned char *__cil_tmp68 ;
  unsigned char __cil_tmp69 ;
  int __cil_tmp70 ;
  int __cil_tmp71 ;
  int __cil_tmp72 ;
  short __cil_tmp73 ;
  int __cil_tmp74 ;
  unsigned char *__cil_tmp75 ;
  unsigned char __cil_tmp76 ;
  int __cil_tmp77 ;
  int __cil_tmp78 ;
  short __cil_tmp79 ;
  int __cil_tmp80 ;
  unsigned char *__cil_tmp81 ;
  unsigned char __cil_tmp82 ;
  int __cil_tmp83 ;
  int __cil_tmp84 ;
  short __cil_tmp85 ;
  int __cil_tmp86 ;
  int __cil_tmp87 ;
  int __cil_tmp88 ;
  unsigned char *__cil_tmp89 ;
  unsigned char __cil_tmp90 ;
  short __cil_tmp91 ;
  int __cil_tmp92 ;
  int __cil_tmp93 ;
  unsigned char *__cil_tmp94 ;
  unsigned char __cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  short __cil_tmp98 ;
  int __cil_tmp99 ;
  unsigned char *__cil_tmp100 ;
  unsigned char __cil_tmp101 ;
  int __cil_tmp102 ;
  int __cil_tmp103 ;
  short __cil_tmp104 ;
  int __cil_tmp105 ;
  int __cil_tmp106 ;
  int __cil_tmp107 ;
  unsigned char *__cil_tmp108 ;
  unsigned char __cil_tmp109 ;
  short __cil_tmp110 ;
  int __cil_tmp111 ;
  int __cil_tmp112 ;
  unsigned char *__cil_tmp113 ;
  unsigned char __cil_tmp114 ;
  int __cil_tmp115 ;
  int __cil_tmp116 ;
  int __cil_tmp117 ;
  short __cil_tmp118 ;
  int __cil_tmp119 ;
  unsigned char *__cil_tmp120 ;
  unsigned char __cil_tmp121 ;
  int __cil_tmp122 ;
  int __cil_tmp123 ;
  short __cil_tmp124 ;
  int __cil_tmp125 ;
  int __cil_tmp126 ;
  int __cil_tmp127 ;
  unsigned char *__cil_tmp128 ;
  unsigned char __cil_tmp129 ;
  int __cil_tmp130 ;
  int __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  int __cil_tmp133 ;
  unsigned char *__cil_tmp134 ;
  unsigned char __cil_tmp135 ;
  int __cil_tmp136 ;
  int __cil_tmp137 ;
  unsigned char *__cil_tmp138 ;
  unsigned char __cil_tmp139 ;
  int __cil_tmp140 ;
  int __cil_tmp141 ;
  __u16 __cil_tmp142 ;
  unsigned int __cil_tmp143 ;
  int __cil_tmp144 ;
  int __cil_tmp145 ;
  int __cil_tmp146 ;
  int __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  __u32 __cil_tmp150 ;
  int __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  __u32 __cil_tmp154 ;
  int __cil_tmp155 ;
  __u16 __cil_tmp156 ;
  unsigned int __cil_tmp157 ;
  {
  {
  __cil_tmp8 = data + 1UL;
  __cil_tmp9 = *__cil_tmp8;
  if ((int )__cil_tmp9 == 128) {
    goto case_128;
  } else
  if ((int )__cil_tmp9 == 194) {
    goto case_194;
  } else {
    {
    goto switch_default;
    if (0) {
      case_128:
      {
      input_report_key(input, 330U, 0);
      input_report_abs(input, 24U, 0);
      input_report_key(input, 331U, 0);
      input_report_key(input, 332U, 0);
      __cil_tmp10 = *((__u16 *)wdata);
      __cil_tmp11 = (unsigned int )__cil_tmp10;
      input_report_key(input, __cil_tmp11, 0);
      input_report_abs(input, 40U, 0);
      __cil_tmp12 = (unsigned long )wdata;
      __cil_tmp13 = __cil_tmp12 + 12;
      __cil_tmp14 = *((__u32 *)__cil_tmp13);
      __cil_tmp15 = (int )__cil_tmp14;
      input_event(input, 4U, 0U, __cil_tmp15);
      *((__u16 *)wdata) = (__u16 )0U;
      input_sync(input);
      }
      goto ldv_19814;
      case_194:
      __cil_tmp16 = (unsigned long )wdata;
      __cil_tmp17 = __cil_tmp16 + 8;
      __cil_tmp18 = data + 8UL;
      __cil_tmp19 = *__cil_tmp18;
      __cil_tmp20 = (int )__cil_tmp19;
      __cil_tmp21 = __cil_tmp20 & 240;
      __cil_tmp22 = __cil_tmp21 << 12;
      __cil_tmp23 = data + 7UL;
      __cil_tmp24 = *__cil_tmp23;
      __cil_tmp25 = (int )__cil_tmp24;
      __cil_tmp26 = __cil_tmp25 & 15;
      __cil_tmp27 = __cil_tmp26 << 20;
      __cil_tmp28 = data + 3UL;
      __cil_tmp29 = *__cil_tmp28;
      __cil_tmp30 = (int )__cil_tmp29;
      __cil_tmp31 = __cil_tmp30 >> 4;
      __cil_tmp32 = data + 2UL;
      __cil_tmp33 = *__cil_tmp32;
      __cil_tmp34 = (int )__cil_tmp33;
      __cil_tmp35 = __cil_tmp34 << 4;
      __cil_tmp36 = __cil_tmp35 | __cil_tmp31;
      __cil_tmp37 = __cil_tmp36 | __cil_tmp27;
      __cil_tmp38 = __cil_tmp37 | __cil_tmp22;
      *((__u32 *)__cil_tmp17) = (__u32 )__cil_tmp38;
      __cil_tmp39 = (unsigned long )wdata;
      __cil_tmp40 = __cil_tmp39 + 12;
      __cil_tmp41 = data + 7UL;
      __cil_tmp42 = *__cil_tmp41;
      __cil_tmp43 = (int )__cil_tmp42;
      __cil_tmp44 = __cil_tmp43 >> 4;
      __cil_tmp45 = data + 6UL;
      __cil_tmp46 = *__cil_tmp45;
      __cil_tmp47 = (int )__cil_tmp46;
      __cil_tmp48 = __cil_tmp47 << 4;
      __cil_tmp49 = data + 5UL;
      __cil_tmp50 = *__cil_tmp49;
      __cil_tmp51 = (int )__cil_tmp50;
      __cil_tmp52 = __cil_tmp51 << 12;
      __cil_tmp53 = data + 4UL;
      __cil_tmp54 = *__cil_tmp53;
      __cil_tmp55 = (int )__cil_tmp54;
      __cil_tmp56 = __cil_tmp55 << 20;
      __cil_tmp57 = data + 3UL;
      __cil_tmp58 = *__cil_tmp57;
      __cil_tmp59 = (int )__cil_tmp58;
      __cil_tmp60 = __cil_tmp59 << 28;
      __cil_tmp61 = __cil_tmp60 + __cil_tmp56;
      __cil_tmp62 = __cil_tmp61 + __cil_tmp52;
      __cil_tmp63 = __cil_tmp62 + __cil_tmp48;
      __cil_tmp64 = __cil_tmp63 + __cil_tmp44;
      *((__u32 *)__cil_tmp40) = (__u32 )__cil_tmp64;
      {
      __cil_tmp65 = (unsigned long )wdata;
      __cil_tmp66 = __cil_tmp65 + 8;
      __cil_tmp67 = *((__u32 *)__cil_tmp66);
      if ((int )__cil_tmp67 == 1050626) {
        goto case_1050626;
      } else
      if ((int )__cil_tmp67 == 1050634) {
        goto case_1050634;
      } else
      if (0) {
        case_1050626:
        *((__u16 *)wdata) = (__u16 )320U;
        goto ldv_19817;
        case_1050634:
        *((__u16 *)wdata) = (__u16 )321U;
        goto ldv_19817;
      } else {
        switch_break___0: ;
      }
      }
      ldv_19817: ;
      goto ldv_19814;
      switch_default:
      {
      __cil_tmp68 = data + 9UL;
      __cil_tmp69 = *__cil_tmp68;
      __cil_tmp70 = (int )__cil_tmp69;
      __cil_tmp71 = __cil_tmp70 & 2;
      __cil_tmp72 = __cil_tmp71 >> 1;
      __cil_tmp73 = (short )__cil_tmp72;
      __cil_tmp74 = (int )__cil_tmp73;
      __cil_tmp75 = data + 3UL;
      __cil_tmp76 = *__cil_tmp75;
      __cil_tmp77 = (int )__cil_tmp76;
      __cil_tmp78 = __cil_tmp77 << 1;
      __cil_tmp79 = (short )__cil_tmp78;
      __cil_tmp80 = (int )__cil_tmp79;
      __cil_tmp81 = data + 2UL;
      __cil_tmp82 = *__cil_tmp81;
      __cil_tmp83 = (int )__cil_tmp82;
      __cil_tmp84 = __cil_tmp83 << 9;
      __cil_tmp85 = (short )__cil_tmp84;
      __cil_tmp86 = (int )__cil_tmp85;
      __cil_tmp87 = __cil_tmp86 | __cil_tmp80;
      __cil_tmp88 = __cil_tmp87 | __cil_tmp74;
      x = (__u16 )__cil_tmp88;
      __cil_tmp89 = data + 9UL;
      __cil_tmp90 = *__cil_tmp89;
      __cil_tmp91 = (short )__cil_tmp90;
      __cil_tmp92 = (int )__cil_tmp91;
      __cil_tmp93 = __cil_tmp92 & 1;
      __cil_tmp94 = data + 5UL;
      __cil_tmp95 = *__cil_tmp94;
      __cil_tmp96 = (int )__cil_tmp95;
      __cil_tmp97 = __cil_tmp96 << 1;
      __cil_tmp98 = (short )__cil_tmp97;
      __cil_tmp99 = (int )__cil_tmp98;
      __cil_tmp100 = data + 4UL;
      __cil_tmp101 = *__cil_tmp100;
      __cil_tmp102 = (int )__cil_tmp101;
      __cil_tmp103 = __cil_tmp102 << 9;
      __cil_tmp104 = (short )__cil_tmp103;
      __cil_tmp105 = (int )__cil_tmp104;
      __cil_tmp106 = __cil_tmp105 | __cil_tmp99;
      __cil_tmp107 = __cil_tmp106 | __cil_tmp93;
      y = (__u16 )__cil_tmp107;
      __cil_tmp108 = data + 1UL;
      __cil_tmp109 = *__cil_tmp108;
      __cil_tmp110 = (short )__cil_tmp109;
      __cil_tmp111 = (int )__cil_tmp110;
      __cil_tmp112 = __cil_tmp111 & 1;
      __cil_tmp113 = data + 7UL;
      __cil_tmp114 = *__cil_tmp113;
      __cil_tmp115 = (int )__cil_tmp114;
      __cil_tmp116 = __cil_tmp115 & 192;
      __cil_tmp117 = __cil_tmp116 >> 5;
      __cil_tmp118 = (short )__cil_tmp117;
      __cil_tmp119 = (int )__cil_tmp118;
      __cil_tmp120 = data + 6UL;
      __cil_tmp121 = *__cil_tmp120;
      __cil_tmp122 = (int )__cil_tmp121;
      __cil_tmp123 = __cil_tmp122 << 3;
      __cil_tmp124 = (short )__cil_tmp123;
      __cil_tmp125 = (int )__cil_tmp124;
      __cil_tmp126 = __cil_tmp125 | __cil_tmp119;
      __cil_tmp127 = __cil_tmp126 | __cil_tmp112;
      pressure = (__u16 )__cil_tmp127;
      __cil_tmp128 = data + 9UL;
      __cil_tmp129 = *__cil_tmp128;
      __cil_tmp130 = (int )__cil_tmp129;
      __cil_tmp131 = __cil_tmp130 >> 2;
      distance = (__u8 )__cil_tmp131;
      __cil_tmp132 = (unsigned int )pressure;
      __cil_tmp133 = __cil_tmp132 > 1U;
      input_report_key(input, 330U, __cil_tmp133);
      __cil_tmp134 = data + 1UL;
      __cil_tmp135 = *__cil_tmp134;
      __cil_tmp136 = (int )__cil_tmp135;
      __cil_tmp137 = __cil_tmp136 & 2;
      input_report_key(input, 331U, __cil_tmp137);
      __cil_tmp138 = data + 1UL;
      __cil_tmp139 = *__cil_tmp138;
      __cil_tmp140 = (int )__cil_tmp139;
      __cil_tmp141 = __cil_tmp140 & 4;
      input_report_key(input, 332U, __cil_tmp141);
      __cil_tmp142 = *((__u16 *)wdata);
      __cil_tmp143 = (unsigned int )__cil_tmp142;
      input_report_key(input, __cil_tmp143, 1);
      __cil_tmp144 = (int )x;
      input_report_abs(input, 0U, __cil_tmp144);
      __cil_tmp145 = (int )y;
      input_report_abs(input, 1U, __cil_tmp145);
      __cil_tmp146 = (int )pressure;
      input_report_abs(input, 24U, __cil_tmp146);
      __cil_tmp147 = (int )distance;
      input_report_abs(input, 25U, __cil_tmp147);
      __cil_tmp148 = (unsigned long )wdata;
      __cil_tmp149 = __cil_tmp148 + 8;
      __cil_tmp150 = *((__u32 *)__cil_tmp149);
      __cil_tmp151 = (int )__cil_tmp150;
      input_report_abs(input, 40U, __cil_tmp151);
      __cil_tmp152 = (unsigned long )wdata;
      __cil_tmp153 = __cil_tmp152 + 12;
      __cil_tmp154 = *((__u32 *)__cil_tmp153);
      __cil_tmp155 = (int )__cil_tmp154;
      input_event(input, 4U, 0U, __cil_tmp155);
      __cil_tmp156 = *((__u16 *)wdata);
      __cil_tmp157 = (unsigned int )__cil_tmp156;
      input_report_key(input, __cil_tmp157, 1);
      input_sync(input);
      }
      goto ldv_19814;
    } else {
      switch_break: ;
    }
    }
  }
  }
  ldv_19814: ;
  return;
}
}
static void wacom_i4_parse_report(struct hid_device *hdev , struct wacom_data *wdata ,
                                  struct input_dev *input , unsigned char *data )
{ unsigned char __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct device *__cil_tmp11 ;
  struct device const *__cil_tmp12 ;
  unsigned char __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  unsigned char __cil_tmp16 ;
  int __cil_tmp17 ;
  {
  {
  __cil_tmp5 = *data;
  if ((int )__cil_tmp5 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp5 == 2) {
    goto case_2;
  } else
  if ((int )__cil_tmp5 == 3) {
    goto case_3;
  } else
  if ((int )__cil_tmp5 == 12) {
    goto case_12;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      goto ldv_19827;
      case_2:
      {
      wacom_i4_parse_pen_report(wdata, input, data);
      }
      goto ldv_19827;
      case_3:
      __cil_tmp6 = (unsigned long )wdata;
      __cil_tmp7 = __cil_tmp6 + 5;
      __cil_tmp8 = data + 2UL;
      *((__u8 *)__cil_tmp7) = *__cil_tmp8;
      goto ldv_19827;
      case_12:
      {
      wacom_i4_parse_button_report(wdata, input, data);
      }
      goto ldv_19827;
      switch_default:
      {
      __cil_tmp9 = (unsigned long )hdev;
      __cil_tmp10 = __cil_tmp9 + 6376;
      __cil_tmp11 = (struct device *)__cil_tmp10;
      __cil_tmp12 = (struct device const *)__cil_tmp11;
      __cil_tmp13 = *data;
      __cil_tmp14 = (int )__cil_tmp13;
      __cil_tmp15 = data + 1UL;
      __cil_tmp16 = *__cil_tmp15;
      __cil_tmp17 = (int )__cil_tmp16;
      dev_err(__cil_tmp12, "Unknown report: %d,%d\n", __cil_tmp14, __cil_tmp17);
      }
      goto ldv_19827;
    } else {
      switch_break: ;
    }
    }
  }
  }
  ldv_19827: ;
  return;
}
}
static int wacom_raw_event(struct hid_device *hdev , struct hid_report *report , u8 *raw_data ,
                           int size )
{ struct wacom_data *wdata ;
  void *tmp ;
  struct hid_input *hidinput ;
  struct input_dev *input ;
  unsigned char *data ;
  int i ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct list_head *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned char __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  __u32 __cil_tmp26 ;
  unsigned char __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned char *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned char *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned char *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct device *__cil_tmp36 ;
  struct device const *__cil_tmp37 ;
  unsigned char __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned char *__cil_tmp40 ;
  unsigned char __cil_tmp41 ;
  int __cil_tmp42 ;
  {
  {
  tmp = hid_get_drvdata(hdev);
  wdata = (struct wacom_data *)tmp;
  data = raw_data;
  }
  {
  __cil_tmp13 = (unsigned long )hdev;
  __cil_tmp14 = __cil_tmp13 + 7548;
  __cil_tmp15 = *((unsigned int *)__cil_tmp14);
  __cil_tmp16 = __cil_tmp15 & 1U;
  if (__cil_tmp16 == 0U) {
    return (0);
  } else {
  }
  }
  __cil_tmp17 = (unsigned long )hdev;
  __cil_tmp18 = __cil_tmp17 + 7560;
  __cil_tmp19 = *((struct list_head **)__cil_tmp18);
  __mptr = (struct list_head const *)__cil_tmp19;
  hidinput = (struct hid_input *)__mptr;
  __cil_tmp20 = (unsigned long )hidinput;
  __cil_tmp21 = __cil_tmp20 + 24;
  input = *((struct input_dev **)__cil_tmp21);
  {
  __cil_tmp22 = *data;
  __cil_tmp23 = (unsigned int )__cil_tmp22;
  if (__cil_tmp23 != 3U) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp24 = (unsigned long )hdev;
  __cil_tmp25 = __cil_tmp24 + 44;
  __cil_tmp26 = *((__u32 *)__cil_tmp25);
  if ((int )__cil_tmp26 == 129) {
    goto case_129;
  } else
  if ((int )__cil_tmp26 == 189) {
    goto case_189;
  } else
  if (0) {
    case_129:
    {
    tmp___0 = wacom_gr_parse_report(hdev, wdata, input, data);
    }
    return (tmp___0);
    case_189:
    i = 1;
    {
    __cil_tmp27 = *data;
    if ((int )__cil_tmp27 == 4) {
      goto case_4;
    } else
    if ((int )__cil_tmp27 == 3) {
      goto case_3;
    } else {
      {
      goto switch_default;
      if (0) {
        case_4:
        {
        __cil_tmp28 = (unsigned long )i;
        __cil_tmp29 = data + __cil_tmp28;
        wacom_i4_parse_report(hdev, wdata, input, __cil_tmp29);
        i = i + 10;
        }
        case_3:
        {
        __cil_tmp30 = (unsigned long )i;
        __cil_tmp31 = data + __cil_tmp30;
        wacom_i4_parse_report(hdev, wdata, input, __cil_tmp31);
        i = i + 10;
        __cil_tmp32 = (unsigned long )i;
        __cil_tmp33 = data + __cil_tmp32;
        wacom_i4_parse_report(hdev, wdata, input, __cil_tmp33);
        }
        goto ldv_19849;
        switch_default:
        {
        __cil_tmp34 = (unsigned long )hdev;
        __cil_tmp35 = __cil_tmp34 + 6376;
        __cil_tmp36 = (struct device *)__cil_tmp35;
        __cil_tmp37 = (struct device const *)__cil_tmp36;
        __cil_tmp38 = *data;
        __cil_tmp39 = (int )__cil_tmp38;
        __cil_tmp40 = data + 1UL;
        __cil_tmp41 = *__cil_tmp40;
        __cil_tmp42 = (int )__cil_tmp41;
        dev_err(__cil_tmp37, "Unknown report: %d,%d size:%d\n", __cil_tmp39, __cil_tmp42,
                size);
        }
        return (0);
      } else {
        switch_break___0: ;
      }
      }
    }
    }
    ldv_19849: ;
  } else {
    switch_break: ;
  }
  }
  return (1);
}
}
static int wacom_input_mapped(struct hid_device *hdev , struct hid_input *hi , struct hid_field *field ,
                              struct hid_usage *usage , unsigned long **bit , int *max )
{ struct input_dev *input ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long (*__cil_tmp12)[1U] ;
  unsigned long volatile *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long (*__cil_tmp25)[1U] ;
  unsigned long volatile *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long (*__cil_tmp29)[12U] ;
  unsigned long volatile *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long (*__cil_tmp33)[12U] ;
  unsigned long volatile *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long (*__cil_tmp37)[12U] ;
  unsigned long volatile *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long (*__cil_tmp41)[12U] ;
  unsigned long volatile *__cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long (*__cil_tmp45)[12U] ;
  unsigned long volatile *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long (*__cil_tmp49)[12U] ;
  unsigned long volatile *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long (*__cil_tmp53)[12U] ;
  unsigned long volatile *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long (*__cil_tmp57)[12U] ;
  unsigned long volatile *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long (*__cil_tmp61)[12U] ;
  unsigned long volatile *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long (*__cil_tmp65)[12U] ;
  unsigned long volatile *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long (*__cil_tmp69)[12U] ;
  unsigned long volatile *__cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long (*__cil_tmp73)[12U] ;
  unsigned long volatile *__cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  __u32 __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long (*__cil_tmp80)[1U] ;
  unsigned long volatile *__cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long (*__cil_tmp84)[1U] ;
  unsigned long volatile *__cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long (*__cil_tmp88)[12U] ;
  unsigned long volatile *__cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long (*__cil_tmp92)[12U] ;
  unsigned long volatile *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long (*__cil_tmp96)[12U] ;
  unsigned long volatile *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long (*__cil_tmp100)[12U] ;
  unsigned long volatile *__cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long (*__cil_tmp104)[12U] ;
  unsigned long volatile *__cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long (*__cil_tmp108)[12U] ;
  unsigned long volatile *__cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long (*__cil_tmp112)[12U] ;
  unsigned long volatile *__cil_tmp113 ;
  {
  {
  __cil_tmp8 = (unsigned long )hi;
  __cil_tmp9 = __cil_tmp8 + 24;
  input = *((struct input_dev **)__cil_tmp9);
  __cil_tmp10 = (unsigned long )input;
  __cil_tmp11 = __cil_tmp10 + 32;
  __cil_tmp12 = (unsigned long (*)[1U])__cil_tmp11;
  __cil_tmp13 = (unsigned long volatile *)__cil_tmp12;
  __set_bit(0, __cil_tmp13);
  __cil_tmp14 = 0 * 8UL;
  __cil_tmp15 = 40 + __cil_tmp14;
  __cil_tmp16 = (unsigned long )input;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  __cil_tmp18 = 0 * 8UL;
  __cil_tmp19 = 40 + __cil_tmp18;
  __cil_tmp20 = (unsigned long )input;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  __cil_tmp22 = *((unsigned long *)__cil_tmp21);
  *((unsigned long *)__cil_tmp17) = __cil_tmp22 | 14UL;
  __cil_tmp23 = (unsigned long )input;
  __cil_tmp24 = __cil_tmp23 + 144;
  __cil_tmp25 = (unsigned long (*)[1U])__cil_tmp24;
  __cil_tmp26 = (unsigned long volatile *)__cil_tmp25;
  __set_bit(8, __cil_tmp26);
  __cil_tmp27 = (unsigned long )input;
  __cil_tmp28 = __cil_tmp27 + 48;
  __cil_tmp29 = (unsigned long (*)[12U])__cil_tmp28;
  __cil_tmp30 = (unsigned long volatile *)__cil_tmp29;
  __set_bit(320, __cil_tmp30);
  __cil_tmp31 = (unsigned long )input;
  __cil_tmp32 = __cil_tmp31 + 48;
  __cil_tmp33 = (unsigned long (*)[12U])__cil_tmp32;
  __cil_tmp34 = (unsigned long volatile *)__cil_tmp33;
  __set_bit(330, __cil_tmp34);
  __cil_tmp35 = (unsigned long )input;
  __cil_tmp36 = __cil_tmp35 + 48;
  __cil_tmp37 = (unsigned long (*)[12U])__cil_tmp36;
  __cil_tmp38 = (unsigned long volatile *)__cil_tmp37;
  __set_bit(331, __cil_tmp38);
  __cil_tmp39 = (unsigned long )input;
  __cil_tmp40 = __cil_tmp39 + 48;
  __cil_tmp41 = (unsigned long (*)[12U])__cil_tmp40;
  __cil_tmp42 = (unsigned long volatile *)__cil_tmp41;
  __set_bit(332, __cil_tmp42);
  __cil_tmp43 = (unsigned long )input;
  __cil_tmp44 = __cil_tmp43 + 48;
  __cil_tmp45 = (unsigned long (*)[12U])__cil_tmp44;
  __cil_tmp46 = (unsigned long volatile *)__cil_tmp45;
  __set_bit(272, __cil_tmp46);
  __cil_tmp47 = (unsigned long )input;
  __cil_tmp48 = __cil_tmp47 + 48;
  __cil_tmp49 = (unsigned long (*)[12U])__cil_tmp48;
  __cil_tmp50 = (unsigned long volatile *)__cil_tmp49;
  __set_bit(273, __cil_tmp50);
  __cil_tmp51 = (unsigned long )input;
  __cil_tmp52 = __cil_tmp51 + 48;
  __cil_tmp53 = (unsigned long (*)[12U])__cil_tmp52;
  __cil_tmp54 = (unsigned long volatile *)__cil_tmp53;
  __set_bit(274, __cil_tmp54);
  input_set_capability(input, 4U, 0U);
  __cil_tmp55 = (unsigned long )input;
  __cil_tmp56 = __cil_tmp55 + 48;
  __cil_tmp57 = (unsigned long (*)[12U])__cil_tmp56;
  __cil_tmp58 = (unsigned long volatile *)__cil_tmp57;
  __set_bit(256, __cil_tmp58);
  __cil_tmp59 = (unsigned long )input;
  __cil_tmp60 = __cil_tmp59 + 48;
  __cil_tmp61 = (unsigned long (*)[12U])__cil_tmp60;
  __cil_tmp62 = (unsigned long volatile *)__cil_tmp61;
  __set_bit(257, __cil_tmp62);
  __cil_tmp63 = (unsigned long )input;
  __cil_tmp64 = __cil_tmp63 + 48;
  __cil_tmp65 = (unsigned long (*)[12U])__cil_tmp64;
  __cil_tmp66 = (unsigned long volatile *)__cil_tmp65;
  __set_bit(325, __cil_tmp66);
  __cil_tmp67 = (unsigned long )input;
  __cil_tmp68 = __cil_tmp67 + 48;
  __cil_tmp69 = (unsigned long (*)[12U])__cil_tmp68;
  __cil_tmp70 = (unsigned long volatile *)__cil_tmp69;
  __set_bit(321, __cil_tmp70);
  __cil_tmp71 = (unsigned long )input;
  __cil_tmp72 = __cil_tmp71 + 48;
  __cil_tmp73 = (unsigned long (*)[12U])__cil_tmp72;
  __cil_tmp74 = (unsigned long volatile *)__cil_tmp73;
  __set_bit(326, __cil_tmp74);
  }
  {
  __cil_tmp75 = (unsigned long )hdev;
  __cil_tmp76 = __cil_tmp75 + 44;
  __cil_tmp77 = *((__u32 *)__cil_tmp76);
  if ((int )__cil_tmp77 == 129) {
    goto case_129;
  } else
  if ((int )__cil_tmp77 == 189) {
    goto case_189;
  } else
  if (0) {
    case_129:
    {
    input_set_abs_params(input, 0U, 0, 16704, 4, 0);
    input_set_abs_params(input, 1U, 0, 12064, 4, 0);
    input_set_abs_params(input, 24U, 0, 511, 0, 0);
    input_set_abs_params(input, 25U, 0, 32, 0, 0);
    }
    goto ldv_19861;
    case_189:
    {
    __cil_tmp78 = (unsigned long )input;
    __cil_tmp79 = __cil_tmp78 + 152;
    __cil_tmp80 = (unsigned long (*)[1U])__cil_tmp79;
    __cil_tmp81 = (unsigned long volatile *)__cil_tmp80;
    __set_bit(8, __cil_tmp81);
    __cil_tmp82 = (unsigned long )input;
    __cil_tmp83 = __cil_tmp82 + 152;
    __cil_tmp84 = (unsigned long (*)[1U])__cil_tmp83;
    __cil_tmp85 = (unsigned long volatile *)__cil_tmp84;
    __set_bit(40, __cil_tmp85);
    __cil_tmp86 = (unsigned long )input;
    __cil_tmp87 = __cil_tmp86 + 48;
    __cil_tmp88 = (unsigned long (*)[12U])__cil_tmp87;
    __cil_tmp89 = (unsigned long volatile *)__cil_tmp88;
    __set_bit(258, __cil_tmp89);
    __cil_tmp90 = (unsigned long )input;
    __cil_tmp91 = __cil_tmp90 + 48;
    __cil_tmp92 = (unsigned long (*)[12U])__cil_tmp91;
    __cil_tmp93 = (unsigned long volatile *)__cil_tmp92;
    __set_bit(259, __cil_tmp93);
    __cil_tmp94 = (unsigned long )input;
    __cil_tmp95 = __cil_tmp94 + 48;
    __cil_tmp96 = (unsigned long (*)[12U])__cil_tmp95;
    __cil_tmp97 = (unsigned long volatile *)__cil_tmp96;
    __set_bit(260, __cil_tmp97);
    __cil_tmp98 = (unsigned long )input;
    __cil_tmp99 = __cil_tmp98 + 48;
    __cil_tmp100 = (unsigned long (*)[12U])__cil_tmp99;
    __cil_tmp101 = (unsigned long volatile *)__cil_tmp100;
    __set_bit(261, __cil_tmp101);
    __cil_tmp102 = (unsigned long )input;
    __cil_tmp103 = __cil_tmp102 + 48;
    __cil_tmp104 = (unsigned long (*)[12U])__cil_tmp103;
    __cil_tmp105 = (unsigned long volatile *)__cil_tmp104;
    __set_bit(262, __cil_tmp105);
    __cil_tmp106 = (unsigned long )input;
    __cil_tmp107 = __cil_tmp106 + 48;
    __cil_tmp108 = (unsigned long (*)[12U])__cil_tmp107;
    __cil_tmp109 = (unsigned long volatile *)__cil_tmp108;
    __set_bit(263, __cil_tmp109);
    __cil_tmp110 = (unsigned long )input;
    __cil_tmp111 = __cil_tmp110 + 48;
    __cil_tmp112 = (unsigned long (*)[12U])__cil_tmp111;
    __cil_tmp113 = (unsigned long volatile *)__cil_tmp112;
    __set_bit(264, __cil_tmp113);
    input_set_abs_params(input, 8U, 0, 71, 0, 0);
    input_set_abs_params(input, 0U, 0, 40640, 4, 0);
    input_set_abs_params(input, 1U, 0, 25400, 4, 0);
    input_set_abs_params(input, 24U, 0, 2047, 0, 0);
    input_set_abs_params(input, 25U, 0, 63, 0, 0);
    }
    goto ldv_19861;
  } else {
    switch_break: ;
  }
  }
  ldv_19861: ;
  return (0);
}
}
static int wacom_probe(struct hid_device *hdev , struct hid_device_id const *id )
{ struct wacom_data *wdata ;
  int ret ;
  void *tmp ;
  struct wacom_data *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct device *__cil_tmp11 ;
  struct device const *__cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct device *__cil_tmp16 ;
  struct device const *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct device *__cil_tmp20 ;
  struct device const *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct device *__cil_tmp24 ;
  struct device_attribute const *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct device *__cil_tmp28 ;
  struct device const *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  __u32 __cil_tmp32 ;
  u8 __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  char (*__cil_tmp36)[128U] ;
  char *__cil_tmp37 ;
  char *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  struct device *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  struct power_supply *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  struct device *__cil_tmp66 ;
  struct device const *__cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  struct power_supply *__cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  struct device *__cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  struct device *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  struct power_supply *__cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  struct device *__cil_tmp99 ;
  struct device const *__cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  struct power_supply *__cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  struct device *__cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  struct power_supply *__cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  struct device *__cil_tmp112 ;
  struct device_attribute const *__cil_tmp113 ;
  void const *__cil_tmp114 ;
  {
  {
  tmp = kzalloc(552UL, 208U);
  wdata = (struct wacom_data *)tmp;
  }
  {
  __cil_tmp6 = (struct wacom_data *)0;
  __cil_tmp7 = (unsigned long )__cil_tmp6;
  __cil_tmp8 = (unsigned long )wdata;
  if (__cil_tmp8 == __cil_tmp7) {
    {
    __cil_tmp9 = (unsigned long )hdev;
    __cil_tmp10 = __cil_tmp9 + 6376;
    __cil_tmp11 = (struct device *)__cil_tmp10;
    __cil_tmp12 = (struct device const *)__cil_tmp11;
    dev_err(__cil_tmp12, "can\'t alloc wacom descriptor\n");
    }
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp13 = (void *)wdata;
  hid_set_drvdata(hdev, __cil_tmp13);
  ret = hid_parse(hdev);
  }
  if (ret != 0) {
    {
    __cil_tmp14 = (unsigned long )hdev;
    __cil_tmp15 = __cil_tmp14 + 6376;
    __cil_tmp16 = (struct device *)__cil_tmp15;
    __cil_tmp17 = (struct device const *)__cil_tmp16;
    dev_err(__cil_tmp17, "parse failed\n");
    }
    goto err_free;
  } else {
  }
  {
  ret = hid_hw_start(hdev, 45U);
  }
  if (ret != 0) {
    {
    __cil_tmp18 = (unsigned long )hdev;
    __cil_tmp19 = __cil_tmp18 + 6376;
    __cil_tmp20 = (struct device *)__cil_tmp19;
    __cil_tmp21 = (struct device const *)__cil_tmp20;
    dev_err(__cil_tmp21, "hw start failed\n");
    }
    goto err_free;
  } else {
  }
  {
  __cil_tmp22 = (unsigned long )hdev;
  __cil_tmp23 = __cil_tmp22 + 6376;
  __cil_tmp24 = (struct device *)__cil_tmp23;
  __cil_tmp25 = (struct device_attribute const *)(& dev_attr_speed);
  ret = device_create_file(__cil_tmp24, __cil_tmp25);
  }
  if (ret != 0) {
    {
    __cil_tmp26 = (unsigned long )hdev;
    __cil_tmp27 = __cil_tmp26 + 6376;
    __cil_tmp28 = (struct device *)__cil_tmp27;
    __cil_tmp29 = (struct device const *)__cil_tmp28;
    dev_warn(__cil_tmp29, "can\'t create sysfs speed attribute err: %d\n", ret);
    }
  } else {
  }
  {
  __cil_tmp30 = (unsigned long )hdev;
  __cil_tmp31 = __cil_tmp30 + 44;
  __cil_tmp32 = *((__u32 *)__cil_tmp31);
  if ((int )__cil_tmp32 == 129) {
    goto case_129;
  } else
  if ((int )__cil_tmp32 == 189) {
    goto case_189;
  } else
  if (0) {
    case_129:
    {
    __cil_tmp33 = (u8 )1;
    wacom_poke(hdev, __cil_tmp33);
    }
    goto ldv_19871;
    case_189:
    {
    __cil_tmp34 = (unsigned long )hdev;
    __cil_tmp35 = __cil_tmp34 + 7600;
    __cil_tmp36 = (char (*)[128U])__cil_tmp35;
    __cil_tmp37 = (char *)__cil_tmp36;
    __cil_tmp38 = (char *)"Wacom Intuos4 WL";
    sprintf(__cil_tmp37, "%s", __cil_tmp38);
    __cil_tmp39 = (unsigned long )wdata;
    __cil_tmp40 = __cil_tmp39 + 5;
    *((__u8 *)__cil_tmp40) = (__u8 )0U;
    wacom_set_features(hdev);
    }
    goto ldv_19871;
  } else {
    switch_break: ;
  }
  }
  ldv_19871:
  {
  __cil_tmp41 = 24 + 16;
  __cil_tmp42 = (unsigned long )wdata;
  __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
  *((enum power_supply_property **)__cil_tmp43) = (enum power_supply_property *)(& wacom_battery_props);
  __cil_tmp44 = 24 + 24;
  __cil_tmp45 = (unsigned long )wdata;
  __cil_tmp46 = __cil_tmp45 + __cil_tmp44;
  *((size_t *)__cil_tmp46) = 3UL;
  __cil_tmp47 = 24 + 48;
  __cil_tmp48 = (unsigned long )wdata;
  __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
  *((int (**)(struct power_supply * , enum power_supply_property , union power_supply_propval * ))__cil_tmp49) = & wacom_battery_get_property;
  __cil_tmp50 = (unsigned long )wdata;
  __cil_tmp51 = __cil_tmp50 + 24;
  *((char const **)__cil_tmp51) = "wacom_battery";
  __cil_tmp52 = 24 + 8;
  __cil_tmp53 = (unsigned long )wdata;
  __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
  *((enum power_supply_type *)__cil_tmp54) = (enum power_supply_type )1;
  __cil_tmp55 = 24 + 88;
  __cil_tmp56 = (unsigned long )wdata;
  __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
  *((int *)__cil_tmp57) = 0;
  __cil_tmp58 = (unsigned long )hdev;
  __cil_tmp59 = __cil_tmp58 + 6376;
  __cil_tmp60 = (struct device *)__cil_tmp59;
  __cil_tmp61 = (unsigned long )wdata;
  __cil_tmp62 = __cil_tmp61 + 24;
  __cil_tmp63 = (struct power_supply *)__cil_tmp62;
  ret = power_supply_register(__cil_tmp60, __cil_tmp63);
  }
  if (ret != 0) {
    {
    __cil_tmp64 = (unsigned long )hdev;
    __cil_tmp65 = __cil_tmp64 + 6376;
    __cil_tmp66 = (struct device *)__cil_tmp65;
    __cil_tmp67 = (struct device const *)__cil_tmp66;
    dev_warn(__cil_tmp67, "can\'t create sysfs battery attribute, err: %d\n", ret);
    }
    goto err_battery;
  } else {
  }
  {
  __cil_tmp68 = (unsigned long )wdata;
  __cil_tmp69 = __cil_tmp68 + 24;
  __cil_tmp70 = (struct power_supply *)__cil_tmp69;
  __cil_tmp71 = (unsigned long )hdev;
  __cil_tmp72 = __cil_tmp71 + 6376;
  __cil_tmp73 = (struct device *)__cil_tmp72;
  power_supply_powers(__cil_tmp70, __cil_tmp73);
  __cil_tmp74 = 288 + 16;
  __cil_tmp75 = (unsigned long )wdata;
  __cil_tmp76 = __cil_tmp75 + __cil_tmp74;
  *((enum power_supply_property **)__cil_tmp76) = (enum power_supply_property *)(& wacom_ac_props);
  __cil_tmp77 = 288 + 24;
  __cil_tmp78 = (unsigned long )wdata;
  __cil_tmp79 = __cil_tmp78 + __cil_tmp77;
  *((size_t *)__cil_tmp79) = 3UL;
  __cil_tmp80 = 288 + 48;
  __cil_tmp81 = (unsigned long )wdata;
  __cil_tmp82 = __cil_tmp81 + __cil_tmp80;
  *((int (**)(struct power_supply * , enum power_supply_property , union power_supply_propval * ))__cil_tmp82) = & wacom_ac_get_property;
  __cil_tmp83 = (unsigned long )wdata;
  __cil_tmp84 = __cil_tmp83 + 288;
  *((char const **)__cil_tmp84) = "wacom_ac";
  __cil_tmp85 = 288 + 8;
  __cil_tmp86 = (unsigned long )wdata;
  __cil_tmp87 = __cil_tmp86 + __cil_tmp85;
  *((enum power_supply_type *)__cil_tmp87) = (enum power_supply_type )3;
  __cil_tmp88 = 288 + 88;
  __cil_tmp89 = (unsigned long )wdata;
  __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
  *((int *)__cil_tmp90) = 0;
  __cil_tmp91 = (unsigned long )hdev;
  __cil_tmp92 = __cil_tmp91 + 6376;
  __cil_tmp93 = (struct device *)__cil_tmp92;
  __cil_tmp94 = (unsigned long )wdata;
  __cil_tmp95 = __cil_tmp94 + 288;
  __cil_tmp96 = (struct power_supply *)__cil_tmp95;
  ret = power_supply_register(__cil_tmp93, __cil_tmp96);
  }
  if (ret != 0) {
    {
    __cil_tmp97 = (unsigned long )hdev;
    __cil_tmp98 = __cil_tmp97 + 6376;
    __cil_tmp99 = (struct device *)__cil_tmp98;
    __cil_tmp100 = (struct device const *)__cil_tmp99;
    dev_warn(__cil_tmp100, "can\'t create ac battery attribute, err: %d\n", ret);
    }
    goto err_ac;
  } else {
  }
  {
  __cil_tmp101 = (unsigned long )wdata;
  __cil_tmp102 = __cil_tmp101 + 288;
  __cil_tmp103 = (struct power_supply *)__cil_tmp102;
  __cil_tmp104 = (unsigned long )hdev;
  __cil_tmp105 = __cil_tmp104 + 6376;
  __cil_tmp106 = (struct device *)__cil_tmp105;
  power_supply_powers(__cil_tmp103, __cil_tmp106);
  }
  return (0);
  err_ac:
  {
  __cil_tmp107 = (unsigned long )wdata;
  __cil_tmp108 = __cil_tmp107 + 24;
  __cil_tmp109 = (struct power_supply *)__cil_tmp108;
  power_supply_unregister(__cil_tmp109);
  }
  err_battery:
  {
  __cil_tmp110 = (unsigned long )hdev;
  __cil_tmp111 = __cil_tmp110 + 6376;
  __cil_tmp112 = (struct device *)__cil_tmp111;
  __cil_tmp113 = (struct device_attribute const *)(& dev_attr_speed);
  device_remove_file(__cil_tmp112, __cil_tmp113);
  hid_hw_stop(hdev);
  }
  err_free:
  {
  __cil_tmp114 = (void const *)wdata;
  kfree(__cil_tmp114);
  }
  return (ret);
}
}
static void wacom_remove(struct hid_device *hdev )
{ struct wacom_data *wdata ;
  void *tmp ;
  void *tmp___0 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct device *__cil_tmp7 ;
  struct device_attribute const *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct power_supply *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct power_supply *__cil_tmp14 ;
  void const *__cil_tmp15 ;
  {
  {
  tmp = hid_get_drvdata(hdev);
  wdata = (struct wacom_data *)tmp;
  __cil_tmp5 = (unsigned long )hdev;
  __cil_tmp6 = __cil_tmp5 + 6376;
  __cil_tmp7 = (struct device *)__cil_tmp6;
  __cil_tmp8 = (struct device_attribute const *)(& dev_attr_speed);
  device_remove_file(__cil_tmp7, __cil_tmp8);
  hid_hw_stop(hdev);
  __cil_tmp9 = (unsigned long )wdata;
  __cil_tmp10 = __cil_tmp9 + 24;
  __cil_tmp11 = (struct power_supply *)__cil_tmp10;
  power_supply_unregister(__cil_tmp11);
  __cil_tmp12 = (unsigned long )wdata;
  __cil_tmp13 = __cil_tmp12 + 288;
  __cil_tmp14 = (struct power_supply *)__cil_tmp13;
  power_supply_unregister(__cil_tmp14);
  tmp___0 = hid_get_drvdata(hdev);
  __cil_tmp15 = (void const *)tmp___0;
  kfree(__cil_tmp15);
  }
  return;
}
}
static struct hid_device_id const wacom_devices[3U] = { {(__u16 )5U, (unsigned short)0, 1386U, 129U, 0UL},
        {(__u16 )5U, (unsigned short)0, 1386U, 189U, 0UL},
        {(unsigned short)0, (unsigned short)0, 0U, 0U, 0UL}};
struct hid_device_id const __mod_hid_device_table ;
static struct hid_driver wacom_driver =
     {(char *)"wacom", (struct hid_device_id const *)(& wacom_devices), {(struct list_head *)0,
                                                                         (struct list_head *)0},
    {{{{{0U}}, 0U, 0U, (void *)0, {(struct lock_class_key *)0, {(struct lock_class *)0,
                                                                (struct lock_class *)0},
                                   (char const *)0, 0, 0UL}}}}, & wacom_probe, & wacom_remove,
    (struct hid_report_id const *)0, & wacom_raw_event, (struct hid_usage_id const *)0,
    (int (*)(struct hid_device * , struct hid_field * , struct hid_usage * , __s32 ))0,
    (__u8 *(*)(struct hid_device * , __u8 * , unsigned int * ))0, (int (*)(struct hid_device * ,
                                                                           struct hid_input * ,
                                                                           struct hid_field * ,
                                                                           struct hid_usage * ,
                                                                           unsigned long ** ,
                                                                           int * ))0,
    & wacom_input_mapped, (void (*)(struct hid_device * , struct hid_field * , struct hid_usage * ))0,
    (int (*)(struct hid_device * , pm_message_t ))0, (int (*)(struct hid_device * ))0,
    (int (*)(struct hid_device * ))0, {(char const *)0, (struct bus_type *)0, (struct module *)0,
                                       (char const *)0, (_Bool)0, (struct of_device_id const *)0,
                                       (int (*)(struct device * ))0, (int (*)(struct device * ))0,
                                       (void (*)(struct device * ))0, (int (*)(struct device * ,
                                                                               pm_message_t ))0,
                                       (int (*)(struct device * ))0, (struct attribute_group const **)0,
                                       (struct dev_pm_ops const *)0, (struct driver_private *)0}};
static int wacom_init(void)
{ int ret ;
  {
  {
  ret = __hid_register_driver(& wacom_driver, & __this_module, "hid_wacom");
  }
  if (ret != 0) {
    {
    printk("<3>hid_wacom: can\'t register wacom driver\n");
    }
  } else {
  }
  return (ret);
}
}
static void wacom_exit(void)
{
  {
  {
  hid_unregister_driver(& wacom_driver);
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct hid_device *var_group1 ;
  struct hid_device_id const *var_wacom_probe_12_p1 ;
  int res_wacom_probe_12 ;
  struct hid_report *var_group2 ;
  u8 *var_wacom_raw_event_10_p2 ;
  int var_wacom_raw_event_10_p3 ;
  struct hid_input *var_group3 ;
  struct hid_field *var_wacom_input_mapped_11_p2 ;
  struct hid_usage *var_wacom_input_mapped_11_p3 ;
  unsigned long **var_wacom_input_mapped_11_p4 ;
  int *var_wacom_input_mapped_11_p5 ;
  int ldv_s_wacom_driver_hid_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ldv_s_wacom_driver_hid_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = wacom_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_19937;
  ldv_19936:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 == 0) {
    goto case_0;
  } else
  if (tmp___0 == 1) {
    goto case_1;
  } else
  if (tmp___0 == 2) {
    goto case_2;
  } else
  if (tmp___0 == 3) {
    goto case_3;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_wacom_driver_hid_driver == 0) {
        {
        res_wacom_probe_12 = wacom_probe(var_group1, var_wacom_probe_12_p1);
        ldv_check_return_value(res_wacom_probe_12);
        }
        if (res_wacom_probe_12 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_wacom_driver_hid_driver = 0;
      } else {
      }
      goto ldv_19931;
      case_1:
      {
      wacom_remove(var_group1);
      }
      goto ldv_19931;
      case_2:
      {
      wacom_raw_event(var_group1, var_group2, var_wacom_raw_event_10_p2, var_wacom_raw_event_10_p3);
      }
      goto ldv_19931;
      case_3:
      {
      wacom_input_mapped(var_group1, var_group3, var_wacom_input_mapped_11_p2, var_wacom_input_mapped_11_p3,
                         var_wacom_input_mapped_11_p4, var_wacom_input_mapped_11_p5);
      }
      goto ldv_19931;
      switch_default: ;
      goto ldv_19931;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_19931: ;
  ldv_19937:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_19936;
  } else
  if (ldv_s_wacom_driver_hid_driver != 0) {
    goto ldv_19936;
  } else {
    goto ldv_19938;
  }
  ldv_19938: ;
  ldv_module_exit:
  {
  wacom_exit();
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
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
int __VERIFIER_nondet_int(void);
int __hid_register_driver(struct hid_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int hid_connect(struct hid_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void hid_disconnect(struct hid_device *arg0) {
  return;
}
void hid_unregister_driver(struct hid_driver *arg0) {
  return;
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  return;
}
void input_set_abs_params(struct input_dev *arg0, unsigned int arg1, int arg2, int arg3, int arg4, int arg5) {
  return;
}
void input_set_capability(struct input_dev *arg0, unsigned int arg1, unsigned int arg2) {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int power_supply_powers(struct power_supply *arg0, struct device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int power_supply_register(struct device *arg0, struct power_supply *arg1) {
  return __VERIFIER_nondet_int();
}
void power_supply_unregister(struct power_supply *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
__kernel_size_t strnlen(const char *arg0, __kernel_size_t arg1) {
  return __VERIFIER_nondet_ulong();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
