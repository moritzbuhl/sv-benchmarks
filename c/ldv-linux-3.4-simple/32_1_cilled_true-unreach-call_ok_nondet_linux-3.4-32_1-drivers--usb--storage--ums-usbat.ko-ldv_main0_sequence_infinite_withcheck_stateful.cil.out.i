extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
   void (*func)(struct rcu_head *head ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct pt_regs;
struct pt_regs;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct mm_struct;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_15 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_16 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_14 {
   struct __anonstruct____missing_field_name_15 __annonCompField5 ;
   struct __anonstruct____missing_field_name_16 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_14 __annonCompField7 ;
} __attribute__((__packed__)) ;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_20 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_20 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct page;
struct thread_struct;
struct thread_struct;
struct mm_struct;
struct desc_struct;
struct task_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_24 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_24 __annonCompField8 ;
};
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct pt_regs;
struct cpumask {
   unsigned long bits[((4096UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct static_key;
struct pt_regs;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_31 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_32 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_30 {
   struct __anonstruct____missing_field_name_31 __annonCompField12 ;
   struct __anonstruct____missing_field_name_32 __annonCompField13 ;
};
union __anonunion____missing_field_name_33 {
   u32 padding1[12] ;
   u32 sw_reserved[12] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_30 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32] ;
   u32 xmm_space[64] ;
   u32 padding[12] ;
   union __anonunion____missing_field_name_33 __annonCompField15 ;
} __attribute__((__aligned__(16))) ;
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2] ;
   u64 reserved2[5] ;
} __attribute__((__packed__)) ;
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
} __attribute__((__packed__, __aligned__(64))) ;
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
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
struct __anonstruct____missing_field_name_38 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_37 {
   s64 lock ;
   struct __anonstruct____missing_field_name_38 __annonCompField18 ;
};
typedef union __anonunion_arch_rwlock_t_37 arch_rwlock_t;
struct task_struct;
struct lock_class_key {
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct raw_spinlock raw_spinlock_t;
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_40 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct __anonstruct_rwlock_t_40 rwlock_t;
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
struct task_struct;
struct __anonstruct_nodemask_t_42 {
   unsigned long bits[(((unsigned long )(1 << 10) + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct __anonstruct_nodemask_t_42 nodemask_t;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct page;
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
struct hrtimer;
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
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
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct vm_area_struct;
struct vm_area_struct;
struct bio_vec;
struct bio_vec;
struct page;
struct call_single_data {
   struct list_head list ;
   void (*func)(void *info ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
};
struct vm_area_struct;
struct completion;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct nsproxy;
struct cred;
struct cred;
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
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
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
   struct kmem_cache_node *node[1 << 10] ;
};
struct bio;
struct bio;
struct bio_integrity_payload;
struct bio_integrity_payload;
struct page;
struct block_device;
struct block_device;
typedef void bio_end_io_t(struct bio * , int );
typedef void bio_destructor_t(struct bio * );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bio {
   sector_t bi_sector ;
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   unsigned short bi_vcnt ;
   unsigned short bi_idx ;
   unsigned int bi_phys_segments ;
   unsigned int bi_size ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct bio_integrity_payload *bi_integrity ;
   bio_destructor_t *bi_destructor ;
   struct bio_vec bi_inline_vecs[0] ;
};
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
union __anonunion_d_u_205 {
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
   unsigned char d_iname[32] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_205 d_u ;
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
} __attribute__((__aligned__((1) << (6) ))) ;
struct dentry;
struct vfsmount;
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
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
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
   struct hlist_head tasks[3] ;
   struct rcu_head rcu ;
   struct upid numbers[1] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct pid_namespace;
struct task_struct;
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct user_namespace;
struct user_namespace;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control *sc ) ;
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
struct hd_geometry;
struct hd_geometry;
struct iovec;
struct iovec;
struct nameidata;
struct kiocb;
struct kiocb;
struct kobject;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
struct vm_area_struct;
struct vfsmount;
struct cred;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
   char d_padding4[8] ;
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
struct super_block;
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
   int (*check_quota_file)(struct super_block *sb , int type ) ;
   int (*read_file_info)(struct super_block *sb , int type ) ;
   int (*write_file_info)(struct super_block *sb , int type ) ;
   int (*free_file_info)(struct super_block *sb , int type ) ;
   int (*read_dqblk)(struct dquot *dquot ) ;
   int (*commit_dqblk)(struct dquot *dquot ) ;
   int (*release_dqblk)(struct dquot *dquot ) ;
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
struct path;
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
   struct inode *files[2] ;
   struct mem_dqinfo info[2] ;
   struct quota_format_ops const *ops[2] ;
};
struct page;
struct address_space;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_213 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_212 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_213 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_212 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page *page , struct writeback_control *wbc ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page *page ) ;
   int (*readpages)(struct file *filp , struct address_space *mapping , struct list_head *pages ,
                    unsigned int nr_pages ) ;
   int (*write_begin)(struct file * , struct address_space *mapping , loff_t pos ,
                      unsigned int len , unsigned int flags , struct page **pagep ,
                      void **fsdata ) ;
   int (*write_end)(struct file * , struct address_space *mapping , loff_t pos , unsigned int len ,
                    unsigned int copied , struct page *page , void *fsdata ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const *iov , loff_t offset ,
                        unsigned long nr_segs ) ;
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
} __attribute__((__aligned__(sizeof(long )))) ;
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
union __anonunion____missing_field_name_214 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_215 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_216 {
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
   union __anonunion____missing_field_name_214 __annonCompField33 ;
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
   union __anonunion____missing_field_name_215 __annonCompField34 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_216 __annonCompField35 ;
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
union __anonunion_f_u_217 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_217 f_u ;
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
struct __anonstruct_afs_219 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_218 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_219 afs ;
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
   union __anonunion_fl_u_218 fl_u ;
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
   spinlock_t s_inode_lru_lock __attribute__((__aligned__((1) << (6) ))) ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32] ;
   u8 s_uuid[16] ;
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
struct block_device_operations;
struct block_device_operations;
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
   int (*flush)(struct file * , fl_owner_t id ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int datasync ) ;
   int (*aio_fsync)(struct kiocb * , int datasync ) ;
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
   long (*fallocate)(struct file *file , int mode , loff_t offset , loff_t len ) ;
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
   int (*getattr)(struct vfsmount *mnt , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 start , u64 len ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
struct seq_file;
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block *sb ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int flags ) ;
   int (*write_inode)(struct inode * , struct writeback_control *wbc ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block *sb , int wait ) ;
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
struct task_struct;
struct task_struct;
struct address_space;
union __anonunion____missing_field_name_227 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_231 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_230 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_231 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_229 {
   union __anonunion____missing_field_name_230 __annonCompField38 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_228 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_229 __annonCompField39 ;
};
struct __anonstruct____missing_field_name_226 {
   union __anonunion____missing_field_name_227 __annonCompField36 ;
   union __anonunion____missing_field_name_228 __annonCompField40 ;
};
struct __anonstruct____missing_field_name_233 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_232 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_233 __annonCompField42 ;
};
union __anonunion____missing_field_name_234 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_226 __annonCompField41 ;
   union __anonunion____missing_field_name_232 __annonCompField43 ;
   union __anonunion____missing_field_name_234 __annonCompField44 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_236 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_235 {
   struct __anonstruct_vm_set_236 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_235 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file *filp , unsigned long addr , unsigned long len ,
                                      unsigned long pgoff , unsigned long flags ) ;
   void (*unmap_area)(struct mm_struct *mm , unsigned long addr ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long reserved_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
};
struct mempolicy;
struct anon_vma;
struct file_ra_state;
struct user_struct;
struct user_struct;
struct writeback_control;
struct mm_struct;
struct vm_area_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct *area ) ;
   void (*close)(struct vm_area_struct *area ) ;
   int (*fault)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*page_mkwrite)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*access)(struct vm_area_struct *vma , unsigned long addr , void *buf , int len ,
                 int write ) ;
   int (*set_policy)(struct vm_area_struct *vma , struct mempolicy *new ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct *vma , unsigned long addr ) ;
   int (*migrate)(struct vm_area_struct *vma , nodemask_t const *from , nodemask_t const *to ,
                  unsigned long flags ) ;
};
struct inode;
struct page;
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct scsi_cmnd;
struct scsi_cmnd;
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
struct dma_attrs {
   unsigned long flags[((4UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device *dev , size_t size , dma_addr_t *dma_handle , gfp_t gfp ,
                  struct dma_attrs *attrs ) ;
   void (*free)(struct device *dev , size_t size , void *vaddr , dma_addr_t dma_handle ,
                struct dma_attrs *attrs ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs *attrs ) ;
   dma_addr_t (*map_page)(struct device *dev , struct page *page , unsigned long offset ,
                          size_t size , enum dma_data_direction dir , struct dma_attrs *attrs ) ;
   void (*unmap_page)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ,
                      struct dma_attrs *attrs ) ;
   int (*map_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                 struct dma_attrs *attrs ) ;
   void (*unmap_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                    struct dma_attrs *attrs ) ;
   void (*sync_single_for_cpu)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                               enum dma_data_direction dir ) ;
   void (*sync_single_for_device)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                                  enum dma_data_direction dir ) ;
   void (*sync_sg_for_cpu)(struct device *dev , struct scatterlist *sg , int nents ,
                           enum dma_data_direction dir ) ;
   void (*sync_sg_for_device)(struct device *dev , struct scatterlist *sg , int nents ,
                              enum dma_data_direction dir ) ;
   int (*mapping_error)(struct device *dev , dma_addr_t dma_addr ) ;
   int (*dma_supported)(struct device *dev , u64 mask ) ;
   int (*set_dma_mask)(struct device *dev , u64 mask ) ;
   int is_phys ;
};
struct device;
struct scatterlist;
struct bus_type;
struct device;
struct dma_attrs;
struct scatterlist;
typedef unsigned long cputime_t;
struct task_struct;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct siginfo;
struct __anonstruct_sigset_t_238 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_238 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_240 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_241 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_242 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_243 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_244 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_245 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_239 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_240 _kill ;
   struct __anonstruct__timer_241 _timer ;
   struct __anonstruct__rt_242 _rt ;
   struct __anonstruct__sigchld_243 _sigchld ;
   struct __anonstruct__sigfault_244 _sigfault ;
   struct __anonstruct__sigpoll_245 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_239 _sifields ;
};
typedef struct siginfo siginfo_t;
struct siginfo;
struct task_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct timespec;
struct pt_regs;
struct prop_local_percpu {
   struct percpu_counter events ;
   int shift ;
   unsigned long period ;
   raw_spinlock_t lock ;
};
struct __anonstruct_seccomp_t_248 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_248 seccomp_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct task_struct;
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct task_struct;
struct latency_record {
   unsigned long backtrace[12] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct key;
struct seq_file;
struct user_struct;
struct signal_struct;
struct signal_struct;
struct cred;
struct key_type;
struct key_type;
struct keyring_list;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_249 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_250 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_251 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_249 __annonCompField45 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_250 type_data ;
   union __anonunion_payload_251 payload ;
};
struct audit_context;
struct audit_context;
struct user_struct;
struct cred;
struct inode;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32] ;
   gid_t *blocks[0] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct futex_pi_state;
struct robust_list_head;
struct robust_list_head;
struct bio_list;
struct bio_list;
struct fs_struct;
struct fs_struct;
struct perf_event_context;
struct perf_event_context;
struct blk_plug;
struct blk_plug;
struct seq_file;
struct cfs_rq;
struct cfs_rq;
struct task_struct;
struct nsproxy;
struct user_namespace;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
struct kioctx;
union __anonunion_ki_obj_253 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_253 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct rcu_head rcu_head ;
};
struct mm_struct;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_adj ;
   int oom_score_adj ;
   int oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct io_context;
struct audit_context;
struct mempolicy;
struct pipe_inode_info;
struct rq;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*dequeue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*yield_task)(struct rq *rq ) ;
   bool (*yield_to_task)(struct rq *rq , struct task_struct *p , bool preempt ) ;
   void (*check_preempt_curr)(struct rq *rq , struct task_struct *p , int flags ) ;
   struct task_struct *(*pick_next_task)(struct rq *rq ) ;
   void (*put_prev_task)(struct rq *rq , struct task_struct *p ) ;
   int (*select_task_rq)(struct task_struct *p , int sd_flag , int flags ) ;
   void (*pre_schedule)(struct rq *this_rq , struct task_struct *task ) ;
   void (*post_schedule)(struct rq *this_rq ) ;
   void (*task_waking)(struct task_struct *task ) ;
   void (*task_woken)(struct rq *this_rq , struct task_struct *task ) ;
   void (*set_cpus_allowed)(struct task_struct *p , struct cpumask const *newmask ) ;
   void (*rq_online)(struct rq *rq ) ;
   void (*rq_offline)(struct rq *rq ) ;
   void (*set_curr_task)(struct rq *rq ) ;
   void (*task_tick)(struct rq *rq , struct task_struct *p , int queued ) ;
   void (*task_fork)(struct task_struct *p ) ;
   void (*switched_from)(struct rq *this_rq , struct task_struct *task ) ;
   void (*switched_to)(struct rq *this_rq , struct task_struct *task ) ;
   void (*prio_changed)(struct rq *this_rq , struct task_struct *task , int oldprio ) ;
   unsigned int (*get_rr_interval)(struct rq *rq , struct task_struct *task ) ;
   void (*task_move_group)(struct task_struct *p , int on_rq ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct css_set;
struct compat_robust_list_head;
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int did_exec : 1 ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   unsigned int irq_thread : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   struct cred *replacement_session_keyring ;
   char comm[16] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void *priv ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
struct pid_namespace;
struct disk_stats {
   unsigned long sectors[2] ;
   unsigned long ios[2] ;
   unsigned long merges[2] ;
   unsigned long ticks[2] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   u8 uuid[16] ;
   u8 volname[64] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct rcu_head rcu_head ;
};
struct disk_part_tbl {
   struct rcu_head rcu_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32] ;
   char *(*devnode)(struct gendisk *gd , umode_t *mode ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct seq_file;
struct module;
struct timer_rand_state;
struct module;
struct pt_regs;
struct task_struct;
struct mm_struct;
struct pt_regs;
struct task_struct;
struct backing_dev_info;
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   enum writeback_sync_modes sync_mode ;
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   unsigned int for_kupdate : 1 ;
   unsigned int for_background : 1 ;
   unsigned int tagged_writepages : 1 ;
   unsigned int for_reclaim : 1 ;
   unsigned int range_cyclic : 1 ;
};
struct bdi_writeback;
struct bdi_writeback;
struct page;
struct device;
struct dentry;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   unsigned long last_active ;
   struct task_struct *task ;
   struct timer_list wakeup_timer ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct prop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
struct kmem_cache;
typedef void *mempool_alloc_t(gfp_t gfp_mask , void *pool_data );
typedef void mempool_free_t(void *element , void *pool_data );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion____missing_field_name_264 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_265 {
   struct hlist_node ioc_node ;
   struct rcu_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_264 __annonCompField47 ;
   union __anonunion____missing_field_name_265 __annonCompField48 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct task_struct;
struct bio_integrity_payload {
   struct bio *bip_bio ;
   sector_t bip_sector ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned int bip_size ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_idx ;
   struct work_struct bip_work ;
   struct bio_vec bip_vec[0] ;
};
struct request_queue;
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct module;
struct request_queue;
struct elevator_queue;
struct elevator_queue;
struct request;
struct request;
struct bsg_job;
struct bsg_job;
struct request;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   int count[2] ;
   int starved[2] ;
   int elvpriv ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2] ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion____missing_field_name_268 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_270 {
   struct io_cq *icq ;
   void *priv[2] ;
};
struct __anonstruct_flush_271 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_269 {
   struct __anonstruct_elv_270 elv ;
   struct __anonstruct_flush_271 flush ;
};
struct request {
   struct list_head queuelist ;
   struct call_single_data csd ;
   struct request_queue *q ;
   unsigned int cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion____missing_field_name_268 __annonCompField49 ;
   union __anonunion____missing_field_name_269 __annonCompField50 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
   int tag ;
   int errors ;
   unsigned char __cmd[16] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
struct io_cq;
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef void *elevator_init_fn(struct request_queue * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16] ;
   struct module *elevator_owner ;
   char icq_cache_name[21] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   struct hlist_head *hash ;
   unsigned int registered : 1 ;
};
typedef void request_fn_proc(struct request_queue *q );
typedef void make_request_fn(struct request_queue *q , struct bio *bio );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bio_vec;
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue *q );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
};
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   struct request_list rq ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2] ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   unsigned int flush_flags ;
   unsigned int flush_not_queueable : 1 ;
   unsigned int flush_queue_delayed : 1 ;
   unsigned int flush_pending_idx : 1 ;
   unsigned int flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head cb_list ;
   unsigned int should_sort ;
};
struct work_struct;
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   int (*release)(struct gendisk * , fmode_t ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk *disk , unsigned int clearing ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct scsi_device;
struct scsi_device;
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   unsigned char tag ;
};
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   kernel_ulong_t driver_info ;
};
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
} __attribute__((__packed__)) ;
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
} __attribute__((__packed__)) ;
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
} __attribute__((__packed__)) ;
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
} __attribute__((__packed__)) ;
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
} __attribute__((__packed__)) ;
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
} __attribute__((__packed__)) ;
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
} __attribute__((__packed__)) ;
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
} __attribute__((__packed__)) ;
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
} __attribute__((__packed__)) ;
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
} __attribute__((__packed__)) ;
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16] ;
} __attribute__((__packed__)) ;
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct device;
struct seq_file;
struct usb_device;
struct usb_device;
struct usb_driver;
struct usb_driver;
struct wusb_dev;
struct wusb_dev;
struct ep_device;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
   unsigned char *extra ;
   int extralen ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16] ;
   struct usb_interface *interface[32] ;
   struct usb_interface_cache *intf_cache[32] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[128UL / (8UL * sizeof(unsigned long ))] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   struct dentry *usbfs_dentry ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb_device {
   int devnum ;
   char devpath[16] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16] ;
   struct usb_host_endpoint *ep_out[16] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   struct device *usb_classdev ;
   struct dentry *usbfs_dentry ;
   int maxchild ;
   struct usb_device **children ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface *intf , struct usb_device_id const *id ) ;
   void (*disconnect)(struct usb_interface *intf ) ;
   int (*unlocked_ioctl)(struct usb_interface *intf , unsigned int code , void *buf ) ;
   int (*suspend)(struct usb_interface *intf , pm_message_t message ) ;
   int (*resume)(struct usb_interface *intf ) ;
   int (*reset_resume)(struct usb_interface *intf ) ;
   int (*pre_reset)(struct usb_interface *intf ) ;
   int (*post_reset)(struct usb_interface *intf ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   unsigned int poisoned : 1 ;
};
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0] ;
};
struct scatterlist;
struct usb_sg_request {
   int status ;
   size_t bytes ;
   spinlock_t lock ;
   struct usb_device *dev ;
   int pipe ;
   int entries ;
   struct urb **urbs ;
   int count ;
   struct completion complete ;
};
struct request_queue;
struct block_device;
struct completion;
struct module;
struct scsi_cmnd;
struct scsi_device;
struct us_data;
struct us_data;
struct scsi_cmnd;
struct us_unusual_dev {
   char const *vendorName ;
   char const *productName ;
   __u8 useProtocol ;
   __u8 useTransport ;
   int (*initFunction)(struct us_data * ) ;
};
struct us_data {
   struct mutex dev_mutex ;
   struct usb_device *pusb_dev ;
   struct usb_interface *pusb_intf ;
   struct us_unusual_dev *unusual_dev ;
   unsigned long fflags ;
   unsigned long dflags ;
   unsigned int send_bulk_pipe ;
   unsigned int recv_bulk_pipe ;
   unsigned int send_ctrl_pipe ;
   unsigned int recv_ctrl_pipe ;
   unsigned int recv_intr_pipe ;
   char *transport_name ;
   char *protocol_name ;
   __le32 bcs_signature ;
   u8 subclass ;
   u8 protocol ;
   u8 max_lun ;
   u8 ifnum ;
   u8 ep_bInterval ;
   int (*transport)(struct scsi_cmnd * , struct us_data * ) ;
   int (*transport_reset)(struct us_data * ) ;
   void (*proto_handler)(struct scsi_cmnd * , struct us_data * ) ;
   struct scsi_cmnd *srb ;
   unsigned int tag ;
   char scsi_name[32] ;
   struct urb *current_urb ;
   struct usb_ctrlrequest *cr ;
   struct usb_sg_request current_sg ;
   unsigned char *iobuf ;
   dma_addr_t iobuf_dma ;
   struct task_struct *ctl_thread ;
   struct completion cmnd_ready ;
   struct completion notify ;
   wait_queue_head_t delay_wait ;
   struct delayed_work scan_dwork ;
   void *extra ;
   void (*extra_destructor)(void * ) ;
   void (*suspend_resume_hook)(struct us_data * , int ) ;
   int use_last_sector_hacks ;
   int last_sector_retries ;
};
enum xfer_buf_dir {
    TO_XFER_BUF = 0,
    FROM_XFER_BUF = 1
} ;
struct usbat_info {
   int devicetype ;
   unsigned long sectors ;
   unsigned long ssize ;
   unsigned char sense_key ;
   unsigned long sense_asc ;
   unsigned long sense_ascq ;
};
long ldv__builtin_expect(long val , long res ) ;
__inline static __u32 __arch_swab32(__u32 val ) __attribute__((__no_instrument_function__,
__const__)) ;
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u32 __fswab32(__u32 val ) __attribute__((__no_instrument_function__,
__const__)) ;
__inline static __u32 __fswab32(__u32 val )
{ __u32 tmp ;
  {
  {
  tmp = __arch_swab32(val);
  }
  return (tmp);
}
}
extern int ( printk)(char const *fmt , ...) ;
extern void *memcpy(void *to , void const *from , size_t len ) ;
extern void *memset(void *s , int c , size_t n ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = flags | 32768U;
  tmp = kmalloc(size, __cil_tmp4);
  }
  return (tmp);
}
}
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  {
  {
  __cil_tmp2 = 0 + 8;
  __cil_tmp3 = 88 + __cil_tmp2;
  __cil_tmp4 = (unsigned long )cmd;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  return (*((unsigned int *)__cil_tmp5));
  }
}
}
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd ) __attribute__((__no_instrument_function__)) ;
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  {
  {
  __cil_tmp2 = (unsigned long )cmd;
  __cil_tmp3 = __cil_tmp2 + 88;
  return (*((struct scatterlist **)__cil_tmp3));
  }
}
}
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  {
  {
  __cil_tmp2 = 88 + 16;
  __cil_tmp3 = (unsigned long )cmd;
  __cil_tmp4 = __cil_tmp3 + __cil_tmp2;
  return (*((unsigned int *)__cil_tmp4));
  }
}
}
extern void msleep(unsigned int msecs ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
extern void usb_deregister(struct usb_driver * ) ;
extern void fill_inquiry_response(struct us_data *us , unsigned char *data , unsigned int data_len ) ;
extern int usb_stor_suspend(struct usb_interface *iface , int messageevent ) ;
extern int usb_stor_resume(struct usb_interface *iface ) ;
extern int usb_stor_reset_resume(struct usb_interface *iface ) ;
extern int usb_stor_pre_reset(struct usb_interface *iface ) ;
extern int usb_stor_post_reset(struct usb_interface *iface ) ;
extern int usb_stor_probe1(struct us_data **pus , struct usb_interface *intf , struct usb_device_id const *id ,
                           struct us_unusual_dev *unusual_dev ) ;
extern int usb_stor_probe2(struct us_data *us ) ;
extern void usb_stor_disconnect(struct usb_interface *intf ) ;
extern int usb_stor_CB_reset(struct us_data * ) ;
extern int usb_stor_clear_halt(struct us_data *us , unsigned int pipe ) ;
extern int usb_stor_ctrl_transfer(struct us_data *us , unsigned int pipe , u8 request ,
                                  u8 requesttype , u16 value , u16 index , void *data ,
                                  u16 size ) ;
extern int usb_stor_bulk_transfer_sg(struct us_data *us , unsigned int pipe , void *buf ,
                                     unsigned int length , int use_sg , int *residual ) ;
extern unsigned int usb_stor_access_xfer_buf(unsigned char *buffer , unsigned int buflen ,
                                             struct scsi_cmnd *srb , struct scatterlist ** ,
                                             unsigned int *offset , enum xfer_buf_dir dir ) ;
extern void usb_stor_set_xfer_buf(unsigned char *buffer , unsigned int buflen , struct scsi_cmnd *srb ) ;
static char const __mod_description58[73] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'D', (char const )'r', (char const )'i', (char const )'v',
        (char const )'e', (char const )'r', (char const )' ', (char const )'f',
        (char const )'o', (char const )'r', (char const )' ', (char const )'S',
        (char const )'C', (char const )'M', (char const )' ', (char const )'M',
        (char const )'i', (char const )'c', (char const )'r', (char const )'o',
        (char const )'s', (char const )'y', (char const )'s', (char const )'t',
        (char const )'e', (char const )'m', (char const )'s', (char const )' ',
        (char const )'(', (char const )'a', (char const )'.', (char const )'k',
        (char const )'.', (char const )'a', (char const )'.', (char const )' ',
        (char const )'S', (char const )'h', (char const )'u', (char const )'t',
        (char const )'t', (char const )'l', (char const )'e', (char const )')',
        (char const )' ', (char const )'U', (char const )'S', (char const )'B',
        (char const )'-', (char const )'A', (char const )'T', (char const )'A',
        (char const )'P', (char const )'I', (char const )' ', (char const )'c',
        (char const )'a', (char const )'b', (char const )'l', (char const )'e',
        (char const )'\000'};
static char const __mod_author59[77] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'D',
        (char const )'a', (char const )'n', (char const )'i', (char const )'e',
        (char const )'l', (char const )' ', (char const )'D', (char const )'r',
        (char const )'a', (char const )'k', (char const )'e', (char const )' ',
        (char const )'<', (char const )'d', (char const )'s', (char const )'d',
        (char const )'@', (char const )'g', (char const )'e', (char const )'n',
        (char const )'t', (char const )'o', (char const )'o', (char const )'.',
        (char const )'o', (char const )'r', (char const )'g', (char const )'>',
        (char const )',', (char const )' ', (char const )'R', (char const )'o',
        (char const )'b', (char const )'e', (char const )'r', (char const )'t',
        (char const )' ', (char const )'B', (char const )'a', (char const )'r',
        (char const )'u', (char const )'c', (char const )'h', (char const )' ',
        (char const )'<', (char const )'a', (char const )'u', (char const )'t',
        (char const )'o', (char const )'p', (char const )'h', (char const )'i',
        (char const )'l', (char const )'e', (char const )'@', (char const )'s',
        (char const )'t', (char const )'a', (char const )'r', (char const )'b',
        (char const )'a', (char const )'n', (char const )'d', (char const )'.',
        (char const )'n', (char const )'e', (char const )'t', (char const )'>',
        (char const )'\000'};
static char const __mod_license60[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static int transferred = 0;
static int usbat_flash_transport(struct scsi_cmnd *srb , struct us_data *us ) ;
static int usbat_hp8200e_transport(struct scsi_cmnd *srb , struct us_data *us ) ;
static int init_usbat_cd(struct us_data *us ) ;
static int init_usbat_flash(struct us_data *us ) ;
static struct usb_device_id usbat_usb_ids[4] = { {(__u16 )15, (__u16 )1008, (__u16 )519, (__u16 )1, (__u16 )1, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (kernel_ulong_t )(1 << 24)},
        {(__u16 )15, (__u16 )1008, (__u16 )775, (__u16 )1, (__u16 )1, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (kernel_ulong_t )(1 << 24)},
        {(__u16 )15, (__u16 )1254, (__u16 )4112, (__u16 )0, (__u16 )39321, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (kernel_ulong_t )(1 | (1 << 24))},
        {(__u16 )15, (__u16 )1921, (__u16 )5, (__u16 )5, (__u16 )5, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (kernel_ulong_t )(1 | (1 << 24))}};
extern struct usb_device_id const __mod_usb_device_table __attribute__((__unused__,
__alias__("usbat_usb_ids"))) ;
static struct us_unusual_dev usbat_unusual_dev_list[4] = { {"HP", "CD-Writer+ 8200e", (__u8 )5, (__u8 )128, & init_usbat_cd},
        {"HP", "CD-Writer+ CD-4e", (__u8 )5, (__u8 )128, & init_usbat_cd},
        {"Shuttle/SCM", "USBAT-02", (__u8 )6, (__u8 )128, & init_usbat_flash},
        {"Sandisk", "ImageMate SDDR-05b", (__u8 )6, (__u8 )128, & init_usbat_flash}};
static void usbat_pack_ata_sector_cmd(unsigned char *buf , unsigned char thistime ,
                                      u32 sector , unsigned char cmd )
{ unsigned char *__cil_tmp5 ;
  unsigned char *__cil_tmp6 ;
  unsigned char *__cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  u32 __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  u32 __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  u32 __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  {
  __cil_tmp5 = buf + 0;
  *__cil_tmp5 = (unsigned char)0;
  __cil_tmp6 = buf + 1;
  *__cil_tmp6 = thistime;
  __cil_tmp7 = buf + 2;
  __cil_tmp8 = sector & 255U;
  *__cil_tmp7 = (unsigned char )__cil_tmp8;
  __cil_tmp9 = buf + 3;
  __cil_tmp10 = sector >> 8;
  __cil_tmp11 = __cil_tmp10 & 255U;
  *__cil_tmp9 = (unsigned char )__cil_tmp11;
  __cil_tmp12 = buf + 4;
  __cil_tmp13 = sector >> 16;
  __cil_tmp14 = __cil_tmp13 & 255U;
  *__cil_tmp12 = (unsigned char )__cil_tmp14;
  __cil_tmp15 = buf + 5;
  __cil_tmp16 = sector >> 24;
  __cil_tmp17 = __cil_tmp16 & 15U;
  __cil_tmp18 = 224U | __cil_tmp17;
  *__cil_tmp15 = (unsigned char )__cil_tmp18;
  __cil_tmp19 = buf + 6;
  *__cil_tmp19 = cmd;
  return;
}
}
static int usbat_get_device_type(struct us_data *us )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  void *__cil_tmp4 ;
  struct usbat_info *__cil_tmp5 ;
  {
  {
  __cil_tmp2 = (unsigned long )us;
  __cil_tmp3 = __cil_tmp2 + 648;
  __cil_tmp4 = *((void **)__cil_tmp3);
  __cil_tmp5 = (struct usbat_info *)__cil_tmp4;
  return (*((int *)__cil_tmp5));
  }
}
}
static int usbat_read(struct us_data *us , unsigned char access , unsigned char reg ,
                      unsigned char *content )
{ int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  int __cil_tmp9 ;
  u8 __cil_tmp10 ;
  u8 __cil_tmp11 ;
  u16 __cil_tmp12 ;
  u16 __cil_tmp13 ;
  void *__cil_tmp14 ;
  u16 __cil_tmp15 ;
  {
  {
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 124;
  __cil_tmp8 = *((unsigned int *)__cil_tmp7);
  __cil_tmp9 = (int )access;
  __cil_tmp10 = (u8 )__cil_tmp9;
  __cil_tmp11 = (u8 )192;
  __cil_tmp12 = (u16 )reg;
  __cil_tmp13 = (u16 )0;
  __cil_tmp14 = (void *)content;
  __cil_tmp15 = (u16 )1;
  tmp___7 = usb_stor_ctrl_transfer(us, __cil_tmp8, __cil_tmp10, __cil_tmp11, __cil_tmp12,
                                   __cil_tmp13, __cil_tmp14, __cil_tmp15);
  }
  return (tmp___7);
}
}
static int usbat_write(struct us_data *us , unsigned char access , unsigned char reg ,
                       unsigned char content )
{ int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  u8 __cil_tmp11 ;
  u8 __cil_tmp12 ;
  u16 __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  u16 __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  u16 __cil_tmp19 ;
  u16 __cil_tmp20 ;
  void *__cil_tmp21 ;
  u16 __cil_tmp22 ;
  {
  {
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 120;
  __cil_tmp8 = *((unsigned int *)__cil_tmp7);
  __cil_tmp9 = (int )access;
  __cil_tmp10 = __cil_tmp9 | 1;
  __cil_tmp11 = (u8 )__cil_tmp10;
  __cil_tmp12 = (u8 )64;
  __cil_tmp13 = (u16 )content;
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 << 8;
  __cil_tmp16 = (u16 )reg;
  __cil_tmp17 = (int )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 | __cil_tmp15;
  __cil_tmp19 = (u16 )__cil_tmp18;
  __cil_tmp20 = (u16 )0;
  __cil_tmp21 = (void *)0;
  __cil_tmp22 = (u16 )0;
  tmp___7 = usb_stor_ctrl_transfer(us, __cil_tmp8, __cil_tmp11, __cil_tmp12, __cil_tmp19,
                                   __cil_tmp20, __cil_tmp21, __cil_tmp22);
  }
  return (tmp___7);
}
}
static int usbat_bulk_read(struct us_data *us , void *buf , unsigned int len , int use_sg )
{ int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  void *__cil_tmp9 ;
  int *__cil_tmp10 ;
  {
  if (len == 0U) {
    return (0);
  } else {
  }
  {
  printk("<7>usb-storage: usbat_bulk_read: len = %d\n", len);
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 116;
  __cil_tmp8 = *((unsigned int *)__cil_tmp7);
  __cil_tmp9 = (void *)0;
  __cil_tmp10 = (int *)__cil_tmp9;
  tmp___7 = usb_stor_bulk_transfer_sg(us, __cil_tmp8, buf, len, use_sg, __cil_tmp10);
  }
  return (tmp___7);
}
}
static int usbat_bulk_write(struct us_data *us , void *buf , unsigned int len , int use_sg )
{ int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  void *__cil_tmp9 ;
  int *__cil_tmp10 ;
  {
  if (len == 0U) {
    return (0);
  } else {
  }
  {
  printk("<7>usb-storage: usbat_bulk_write:  len = %d\n", len);
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 112;
  __cil_tmp8 = *((unsigned int *)__cil_tmp7);
  __cil_tmp9 = (void *)0;
  __cil_tmp10 = (int *)__cil_tmp9;
  tmp___7 = usb_stor_bulk_transfer_sg(us, __cil_tmp8, buf, len, use_sg, __cil_tmp10);
  }
  return (tmp___7);
}
}
static int usbat_execute_command(struct us_data *us , unsigned char *commands , unsigned int len )
{ int tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  u8 __cil_tmp8 ;
  u8 __cil_tmp9 ;
  u16 __cil_tmp10 ;
  u16 __cil_tmp11 ;
  void *__cil_tmp12 ;
  u16 __cil_tmp13 ;
  {
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 120;
  __cil_tmp7 = *((unsigned int *)__cil_tmp6);
  __cil_tmp8 = (u8 )128;
  __cil_tmp9 = (u8 )64;
  __cil_tmp10 = (u16 )0;
  __cil_tmp11 = (u16 )0;
  __cil_tmp12 = (void *)commands;
  __cil_tmp13 = (u16 )len;
  tmp___7 = usb_stor_ctrl_transfer(us, __cil_tmp7, __cil_tmp8, __cil_tmp9, __cil_tmp10,
                                   __cil_tmp11, __cil_tmp12, __cil_tmp13);
  }
  return (tmp___7);
}
}
static int usbat_get_status(struct us_data *us , unsigned char *status )
{ int rc ;
  unsigned char __cil_tmp4 ;
  unsigned short __cil_tmp5 ;
  int __cil_tmp6 ;
  {
  {
  rc = usbat_read(us, (unsigned char)64, (unsigned char)23, status);
  __cil_tmp4 = *status;
  __cil_tmp5 = (unsigned short )__cil_tmp4;
  __cil_tmp6 = (int )__cil_tmp5;
  printk("<7>usb-storage: usbat_get_status: 0x%02X\n", __cil_tmp6);
  }
  return (rc);
}
}
static int usbat_check_status(struct us_data *us )
{ unsigned char *reply ;
  int rc ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned char __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned char __cil_tmp8 ;
  int __cil_tmp9 ;
  unsigned char __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  {
  __cil_tmp4 = (unsigned long )us;
  __cil_tmp5 = __cil_tmp4 + 376;
  reply = *((unsigned char **)__cil_tmp5);
  rc = usbat_get_status(us, reply);
  }
  if (rc != 0) {
    return (1);
  } else {
  }
  {
  __cil_tmp6 = *reply;
  __cil_tmp7 = (int )__cil_tmp6;
  if (__cil_tmp7 & 1) {
    {
    __cil_tmp8 = *reply;
    __cil_tmp9 = (int )__cil_tmp8;
    if (__cil_tmp9 != 81) {
      return (1);
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp10 = *reply;
  __cil_tmp11 = (int )__cil_tmp10;
  if (__cil_tmp11 & 32) {
    return (1);
  } else {
  }
  }
  return (0);
}
}
static int usbat_set_shuttle_features(struct us_data *us , unsigned char external_trigger ,
                                      unsigned char epp_control , unsigned char mask_byte ,
                                      unsigned char test_pattern , unsigned char subcountH ,
                                      unsigned char subcountL )
{ unsigned char *command ;
  int tmp___7 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  unsigned char *__cil_tmp13 ;
  unsigned char *__cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  unsigned char *__cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  {
  {
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 376;
  command = *((unsigned char **)__cil_tmp11);
  __cil_tmp12 = command + 0;
  *__cil_tmp12 = (unsigned char)64;
  __cil_tmp13 = command + 1;
  *__cil_tmp13 = (unsigned char)129;
  __cil_tmp14 = command + 2;
  *__cil_tmp14 = epp_control;
  __cil_tmp15 = command + 3;
  *__cil_tmp15 = external_trigger;
  __cil_tmp16 = command + 4;
  *__cil_tmp16 = test_pattern;
  __cil_tmp17 = command + 5;
  *__cil_tmp17 = mask_byte;
  __cil_tmp18 = command + 6;
  *__cil_tmp18 = subcountL;
  __cil_tmp19 = command + 7;
  *__cil_tmp19 = subcountH;
  tmp___7 = usbat_execute_command(us, command, 8U);
  }
  return (tmp___7);
}
}
static int usbat_wait_not_busy(struct us_data *us , int minutes )
{ int i ;
  int result ;
  unsigned char *status ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  unsigned char __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned char __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  {
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 376;
  status = *((unsigned char **)__cil_tmp7);
  i = 0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp8 = minutes * 60;
    __cil_tmp9 = 1200 + __cil_tmp8;
    if (i < __cil_tmp9) {
    } else {
      goto while_break;
    }
    }
    {
    result = usbat_get_status(us, status);
    }
    if (result != 0) {
      return (3);
    } else {
    }
    {
    __cil_tmp10 = *status;
    __cil_tmp11 = (int )__cil_tmp10;
    if (__cil_tmp11 & 1) {
      {
      result = usbat_read(us, (unsigned char)64, (unsigned char)16, status);
      }
      return (1);
    } else {
    }
    }
    {
    __cil_tmp12 = *status;
    __cil_tmp13 = (int )__cil_tmp12;
    if (__cil_tmp13 & 32) {
      return (1);
    } else {
    }
    }
    {
    __cil_tmp14 = *status;
    __cil_tmp15 = (int )__cil_tmp14;
    __cil_tmp16 = __cil_tmp15 & 128;
    if (__cil_tmp16 == 0) {
      {
      printk("<7>usb-storage: Waited not busy for %d steps\n", i);
      }
      return (0);
    } else {
    }
    }
    if (i < 500) {
      {
      msleep(10U);
      }
    } else
    if (i < 700) {
      {
      msleep(50U);
      }
    } else
    if (i < 1200) {
      {
      msleep(100U);
      }
    } else {
      {
      msleep(1000U);
      }
    }
    i = i + 1;
  }
  while_break: ;
  }
  {
  printk("<7>usb-storage: Waited not busy for %d minutes, timing out.\n", minutes);
  }
  return (1);
}
}
static int usbat_read_block(struct us_data *us , void *buf , unsigned short len ,
                            int use_sg )
{ int result ;
  unsigned char *command ;
  int tmp___7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  unsigned char *__cil_tmp13 ;
  unsigned char *__cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  unsigned char *__cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  {
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 376;
  command = *((unsigned char **)__cil_tmp9);
  if (! len) {
    return (0);
  } else {
  }
  {
  __cil_tmp10 = command + 0;
  *__cil_tmp10 = (unsigned char)192;
  __cil_tmp11 = command + 1;
  *__cil_tmp11 = (unsigned char)66;
  __cil_tmp12 = command + 2;
  *__cil_tmp12 = (unsigned char)16;
  __cil_tmp13 = command + 3;
  *__cil_tmp13 = (unsigned char)0;
  __cil_tmp14 = command + 4;
  *__cil_tmp14 = (unsigned char)0;
  __cil_tmp15 = command + 5;
  *__cil_tmp15 = (unsigned char)0;
  __cil_tmp16 = command + 6;
  __cil_tmp17 = (int )len;
  __cil_tmp18 = __cil_tmp17 & 255;
  *__cil_tmp16 = (unsigned char )__cil_tmp18;
  __cil_tmp19 = command + 7;
  __cil_tmp20 = (int )len;
  __cil_tmp21 = __cil_tmp20 >> 8;
  *__cil_tmp19 = (unsigned char )__cil_tmp21;
  result = usbat_execute_command(us, command, 8U);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp22 = (unsigned int )len;
  result = usbat_bulk_read(us, buf, __cil_tmp22, use_sg);
  }
  if (result == 0) {
    tmp___7 = 0;
  } else {
    tmp___7 = 3;
  }
  return (tmp___7);
}
}
static int usbat_write_block(struct us_data *us , unsigned char access , void *buf ,
                             unsigned short len , int minutes , int use_sg )
{ int result ;
  unsigned char *command ;
  int tmp___7 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  unsigned char *__cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned char *__cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  unsigned char *__cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned char *__cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  {
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 376;
  command = *((unsigned char **)__cil_tmp11);
  if (! len) {
    return (0);
  } else {
  }
  {
  __cil_tmp12 = command + 0;
  *__cil_tmp12 = (unsigned char)64;
  __cil_tmp13 = command + 1;
  __cil_tmp14 = (int )access;
  __cil_tmp15 = __cil_tmp14 | 3;
  *__cil_tmp13 = (unsigned char )__cil_tmp15;
  __cil_tmp16 = command + 2;
  *__cil_tmp16 = (unsigned char)16;
  __cil_tmp17 = command + 3;
  *__cil_tmp17 = (unsigned char)0;
  __cil_tmp18 = command + 4;
  *__cil_tmp18 = (unsigned char)0;
  __cil_tmp19 = command + 5;
  *__cil_tmp19 = (unsigned char)0;
  __cil_tmp20 = command + 6;
  __cil_tmp21 = (int )len;
  __cil_tmp22 = __cil_tmp21 & 255;
  *__cil_tmp20 = (unsigned char )__cil_tmp22;
  __cil_tmp23 = command + 7;
  __cil_tmp24 = (int )len;
  __cil_tmp25 = __cil_tmp24 >> 8;
  *__cil_tmp23 = (unsigned char )__cil_tmp25;
  result = usbat_execute_command(us, command, 8U);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp26 = (unsigned int )len;
  result = usbat_bulk_write(us, buf, __cil_tmp26, use_sg);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  tmp___7 = usbat_wait_not_busy(us, minutes);
  }
  return (tmp___7);
}
}
static int usbat_hp8200e_rw_block_test(struct us_data *us , unsigned char access ,
                                       unsigned char *registers , unsigned char *data_out ,
                                       unsigned short num_registers , unsigned char data_reg ,
                                       unsigned char status_reg , unsigned char timeout ,
                                       unsigned char qualifier , int direction , void *buf ,
                                       unsigned short len , int use_sg , int minutes )
{ int result ;
  unsigned int pipe ;
  unsigned int tmp___7 ;
  unsigned char *command ;
  int i ;
  int j ;
  int cmdlen ;
  unsigned char *data ;
  unsigned char *status ;
  long tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  char const *tmp___12 ;
  int tmp___13 ;
  char const *tmp___14 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  long __cil_tmp45 ;
  unsigned char *__cil_tmp46 ;
  unsigned char *__cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned char *__cil_tmp50 ;
  unsigned char *__cil_tmp51 ;
  unsigned char *__cil_tmp52 ;
  unsigned char *__cil_tmp53 ;
  unsigned char *__cil_tmp54 ;
  int __cil_tmp55 ;
  int __cil_tmp56 ;
  int __cil_tmp57 ;
  unsigned char *__cil_tmp58 ;
  int __cil_tmp59 ;
  int __cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned char *__cil_tmp63 ;
  int __cil_tmp64 ;
  unsigned char *__cil_tmp65 ;
  int __cil_tmp66 ;
  unsigned char *__cil_tmp67 ;
  int __cil_tmp68 ;
  int __cil_tmp69 ;
  int __cil_tmp70 ;
  unsigned char *__cil_tmp71 ;
  int __cil_tmp72 ;
  unsigned char *__cil_tmp73 ;
  int __cil_tmp74 ;
  unsigned char *__cil_tmp75 ;
  int __cil_tmp76 ;
  unsigned char *__cil_tmp77 ;
  int __cil_tmp78 ;
  unsigned char *__cil_tmp79 ;
  int __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  unsigned char *__cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  int __cil_tmp87 ;
  int __cil_tmp88 ;
  unsigned char *__cil_tmp89 ;
  unsigned char *__cil_tmp90 ;
  int __cil_tmp91 ;
  int __cil_tmp92 ;
  unsigned char *__cil_tmp93 ;
  unsigned char *__cil_tmp94 ;
  void *__cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  unsigned int __cil_tmp98 ;
  unsigned int __cil_tmp99 ;
  void *__cil_tmp100 ;
  int *__cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned int __cil_tmp104 ;
  unsigned char __cil_tmp105 ;
  unsigned char __cil_tmp106 ;
  int __cil_tmp107 ;
  unsigned char __cil_tmp108 ;
  int __cil_tmp109 ;
  {
  if (direction == 2) {
    __cil_tmp31 = (unsigned long )us;
    __cil_tmp32 = __cil_tmp31 + 116;
    tmp___7 = *((unsigned int *)__cil_tmp32);
  } else {
    __cil_tmp33 = (unsigned long )us;
    __cil_tmp34 = __cil_tmp33 + 112;
    tmp___7 = *((unsigned int *)__cil_tmp34);
  }
  pipe = tmp___7;
  __cil_tmp35 = (unsigned long )us;
  __cil_tmp36 = __cil_tmp35 + 376;
  command = *((unsigned char **)__cil_tmp36);
  __cil_tmp37 = (unsigned long )us;
  __cil_tmp38 = __cil_tmp37 + 376;
  data = *((unsigned char **)__cil_tmp38);
  __cil_tmp39 = (unsigned long )us;
  __cil_tmp40 = __cil_tmp39 + 376;
  status = *((unsigned char **)__cil_tmp40);
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp41 = (int )num_registers;
    __cil_tmp42 = __cil_tmp41 > 32;
    __cil_tmp43 = ! __cil_tmp42;
    __cil_tmp44 = ! __cil_tmp43;
    __cil_tmp45 = (long )__cil_tmp44;
    tmp___8 = ldv__builtin_expect(__cil_tmp45, 0L);
    }
    if (tmp___8) {
      {
      while (1) {
        while_continue___0: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7669/dscv_tempdir/dscv/ri/32_1/drivers/usb/storage/shuttle_usbat.c.common.c"),
                             "i" (545), "i" (12UL));
        {
        while (1) {
          while_continue___1: ;
        }
        while_break___1: ;
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    goto while_break;
  }
  while_break: ;
  }
  i = 0;
  {
  while (1) {
    while_continue___2: ;
    if (i < 20) {
    } else {
      goto while_break___2;
    }
    if (i == 0) {
      cmdlen = 16;
      __cil_tmp46 = command + 0;
      *__cil_tmp46 = (unsigned char)64;
      __cil_tmp47 = command + 1;
      __cil_tmp48 = (int )access;
      __cil_tmp49 = __cil_tmp48 | 7;
      *__cil_tmp47 = (unsigned char )__cil_tmp49;
      __cil_tmp50 = command + 2;
      *__cil_tmp50 = (unsigned char)7;
      __cil_tmp51 = command + 3;
      *__cil_tmp51 = (unsigned char)23;
      __cil_tmp52 = command + 4;
      *__cil_tmp52 = (unsigned char)252;
      __cil_tmp53 = command + 5;
      *__cil_tmp53 = (unsigned char)231;
      __cil_tmp54 = command + 6;
      __cil_tmp55 = (int )num_registers;
      __cil_tmp56 = __cil_tmp55 * 2;
      __cil_tmp57 = __cil_tmp56 & 255;
      *__cil_tmp54 = (unsigned char )__cil_tmp57;
      __cil_tmp58 = command + 7;
      __cil_tmp59 = (int )num_registers;
      __cil_tmp60 = __cil_tmp59 * 2;
      __cil_tmp61 = __cil_tmp60 >> 8;
      *__cil_tmp58 = (unsigned char )__cil_tmp61;
    } else {
      cmdlen = 8;
    }
    if (direction == 1) {
      __cil_tmp62 = cmdlen - 8;
      __cil_tmp63 = command + __cil_tmp62;
      *__cil_tmp63 = (unsigned char)64;
    } else {
      __cil_tmp64 = cmdlen - 8;
      __cil_tmp65 = command + __cil_tmp64;
      *__cil_tmp65 = (unsigned char)192;
    }
    if (direction == 1) {
      tmp___9 = 5;
    } else {
      tmp___9 = 4;
    }
    {
    __cil_tmp66 = cmdlen - 7;
    __cil_tmp67 = command + __cil_tmp66;
    __cil_tmp68 = (int )access;
    __cil_tmp69 = __cil_tmp68 | tmp___9;
    *__cil_tmp67 = (unsigned char )__cil_tmp69;
    __cil_tmp70 = cmdlen - 6;
    __cil_tmp71 = command + __cil_tmp70;
    *__cil_tmp71 = data_reg;
    __cil_tmp72 = cmdlen - 5;
    __cil_tmp73 = command + __cil_tmp72;
    *__cil_tmp73 = status_reg;
    __cil_tmp74 = cmdlen - 4;
    __cil_tmp75 = command + __cil_tmp74;
    *__cil_tmp75 = timeout;
    __cil_tmp76 = cmdlen - 3;
    __cil_tmp77 = command + __cil_tmp76;
    *__cil_tmp77 = qualifier;
    __cil_tmp78 = cmdlen - 2;
    __cil_tmp79 = command + __cil_tmp78;
    __cil_tmp80 = (int )len;
    __cil_tmp81 = __cil_tmp80 & 255;
    *__cil_tmp79 = (unsigned char )__cil_tmp81;
    __cil_tmp82 = cmdlen - 1;
    __cil_tmp83 = command + __cil_tmp82;
    __cil_tmp84 = (int )len;
    __cil_tmp85 = __cil_tmp84 >> 8;
    *__cil_tmp83 = (unsigned char )__cil_tmp85;
    __cil_tmp86 = (unsigned int )cmdlen;
    result = usbat_execute_command(us, command, __cil_tmp86);
    }
    if (result != 0) {
      return (3);
    } else {
    }
    if (i == 0) {
      j = 0;
      {
      while (1) {
        while_continue___3: ;
        {
        __cil_tmp87 = (int )num_registers;
        if (j < __cil_tmp87) {
        } else {
          goto while_break___3;
        }
        }
        __cil_tmp88 = j << 1;
        __cil_tmp89 = data + __cil_tmp88;
        __cil_tmp90 = registers + j;
        *__cil_tmp89 = *__cil_tmp90;
        __cil_tmp91 = j << 1;
        __cil_tmp92 = 1 + __cil_tmp91;
        __cil_tmp93 = data + __cil_tmp92;
        __cil_tmp94 = data_out + j;
        *__cil_tmp93 = *__cil_tmp94;
        j = j + 1;
      }
      while_break___3: ;
      }
      {
      __cil_tmp95 = (void *)data;
      __cil_tmp96 = (int )num_registers;
      __cil_tmp97 = __cil_tmp96 * 2;
      __cil_tmp98 = (unsigned int )__cil_tmp97;
      result = usbat_bulk_write(us, __cil_tmp95, __cil_tmp98, 0);
      }
      if (result != 0) {
        return (3);
      } else {
      }
    } else {
    }
    {
    __cil_tmp99 = (unsigned int )len;
    __cil_tmp100 = (void *)0;
    __cil_tmp101 = (int *)__cil_tmp100;
    result = usb_stor_bulk_transfer_sg(us, pipe, buf, __cil_tmp99, use_sg, __cil_tmp101);
    }
    if (result == 1) {
      goto _L;
    } else
    if (result == 2) {
      _L:
      if (direction == 2) {
        if (i == 0) {
          {
          __cil_tmp102 = (unsigned long )us;
          __cil_tmp103 = __cil_tmp102 + 112;
          __cil_tmp104 = *((unsigned int *)__cil_tmp103);
          tmp___10 = usb_stor_clear_halt(us, __cil_tmp104);
          }
          if (tmp___10 < 0) {
            return (3);
          } else {
          }
        } else {
        }
      } else {
      }
      if (direction == 1) {
        tmp___11 = 23;
      } else {
        tmp___11 = 14;
      }
      {
      __cil_tmp105 = (unsigned char )tmp___11;
      result = usbat_read(us, (unsigned char)64, __cil_tmp105, status);
      }
      if (result != 0) {
        return (3);
      } else {
      }
      {
      __cil_tmp106 = *status;
      __cil_tmp107 = (int )__cil_tmp106;
      if (__cil_tmp107 & 1) {
        return (1);
      } else {
      }
      }
      {
      __cil_tmp108 = *status;
      __cil_tmp109 = (int )__cil_tmp108;
      if (__cil_tmp109 & 32) {
        return (1);
      } else {
      }
      }
      if (direction == 1) {
        tmp___12 = "write";
      } else {
        tmp___12 = "read";
      }
      {
      printk("<7>usb-storage: Redoing %s\n", tmp___12);
      }
    } else
    if (result != 0) {
      return (3);
    } else {
      {
      tmp___13 = usbat_wait_not_busy(us, minutes);
      }
      return (tmp___13);
    }
    i = i + 1;
  }
  while_break___2: ;
  }
  if (direction == 1) {
    tmp___14 = "Writing";
  } else {
    tmp___14 = "Reading";
  }
  {
  printk("<7>usb-storage: Bummer! %s bulk data 20 times failed.\n", tmp___14);
  }
  return (1);
}
}
static int usbat_multiple_write(struct us_data *us , unsigned char *registers , unsigned char *data_out ,
                                unsigned short num_registers )
{ int i ;
  int result ;
  unsigned char *data ;
  unsigned char *command ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  long __cil_tmp20 ;
  unsigned char *__cil_tmp21 ;
  unsigned char *__cil_tmp22 ;
  unsigned char *__cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  unsigned char *__cil_tmp25 ;
  unsigned char *__cil_tmp26 ;
  unsigned char *__cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned char *__cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned char *__cil_tmp37 ;
  unsigned char *__cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned char *__cil_tmp41 ;
  unsigned char *__cil_tmp42 ;
  void *__cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  {
  __cil_tmp12 = (unsigned long )us;
  __cil_tmp13 = __cil_tmp12 + 376;
  data = *((unsigned char **)__cil_tmp13);
  __cil_tmp14 = (unsigned long )us;
  __cil_tmp15 = __cil_tmp14 + 376;
  command = *((unsigned char **)__cil_tmp15);
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp16 = (int )num_registers;
    __cil_tmp17 = __cil_tmp16 > 32;
    __cil_tmp18 = ! __cil_tmp17;
    __cil_tmp19 = ! __cil_tmp18;
    __cil_tmp20 = (long )__cil_tmp19;
    tmp___7 = ldv__builtin_expect(__cil_tmp20, 0L);
    }
    if (tmp___7) {
      {
      while (1) {
        while_continue___0: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7669/dscv_tempdir/dscv/ri/32_1/drivers/usb/storage/shuttle_usbat.c.common.c"),
                             "i" (693), "i" (12UL));
        {
        while (1) {
          while_continue___1: ;
        }
        while_break___1: ;
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp21 = command + 0;
  *__cil_tmp21 = (unsigned char)64;
  __cil_tmp22 = command + 1;
  *__cil_tmp22 = (unsigned char)71;
  __cil_tmp23 = command + 2;
  *__cil_tmp23 = (unsigned char)0;
  __cil_tmp24 = command + 3;
  *__cil_tmp24 = (unsigned char)0;
  __cil_tmp25 = command + 4;
  *__cil_tmp25 = (unsigned char)0;
  __cil_tmp26 = command + 5;
  *__cil_tmp26 = (unsigned char)0;
  __cil_tmp27 = command + 6;
  __cil_tmp28 = (int )num_registers;
  __cil_tmp29 = __cil_tmp28 * 2;
  __cil_tmp30 = __cil_tmp29 & 255;
  *__cil_tmp27 = (unsigned char )__cil_tmp30;
  __cil_tmp31 = command + 7;
  __cil_tmp32 = (int )num_registers;
  __cil_tmp33 = __cil_tmp32 * 2;
  __cil_tmp34 = __cil_tmp33 >> 8;
  *__cil_tmp31 = (unsigned char )__cil_tmp34;
  result = usbat_execute_command(us, command, 8U);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  i = 0;
  {
  while (1) {
    while_continue___2: ;
    {
    __cil_tmp35 = (int )num_registers;
    if (i < __cil_tmp35) {
    } else {
      goto while_break___2;
    }
    }
    __cil_tmp36 = i << 1;
    __cil_tmp37 = data + __cil_tmp36;
    __cil_tmp38 = registers + i;
    *__cil_tmp37 = *__cil_tmp38;
    __cil_tmp39 = i << 1;
    __cil_tmp40 = 1 + __cil_tmp39;
    __cil_tmp41 = data + __cil_tmp40;
    __cil_tmp42 = data_out + i;
    *__cil_tmp41 = *__cil_tmp42;
    i = i + 1;
  }
  while_break___2: ;
  }
  {
  __cil_tmp43 = (void *)data;
  __cil_tmp44 = (int )num_registers;
  __cil_tmp45 = __cil_tmp44 * 2;
  __cil_tmp46 = (unsigned int )__cil_tmp45;
  result = usbat_bulk_write(us, __cil_tmp43, __cil_tmp46, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  tmp___9 = usbat_get_device_type(us);
  }
  if (tmp___9 == 1) {
    {
    tmp___8 = usbat_wait_not_busy(us, 0);
    }
    return (tmp___8);
  } else {
    return (0);
  }
}
}
static int usbat_read_blocks(struct us_data *us , void *buffer , int len , int use_sg )
{ int result ;
  unsigned char *command ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  unsigned char *__cil_tmp13 ;
  unsigned char *__cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  {
  {
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 376;
  command = *((unsigned char **)__cil_tmp8);
  __cil_tmp9 = command + 0;
  *__cil_tmp9 = (unsigned char)192;
  __cil_tmp10 = command + 1;
  *__cil_tmp10 = (unsigned char)68;
  __cil_tmp11 = command + 2;
  *__cil_tmp11 = (unsigned char)16;
  __cil_tmp12 = command + 3;
  *__cil_tmp12 = (unsigned char)23;
  __cil_tmp13 = command + 4;
  *__cil_tmp13 = (unsigned char)253;
  __cil_tmp14 = command + 5;
  *__cil_tmp14 = (unsigned char)32;
  __cil_tmp15 = command + 6;
  __cil_tmp16 = len & 255;
  *__cil_tmp15 = (unsigned char )__cil_tmp16;
  __cil_tmp17 = command + 7;
  __cil_tmp18 = len >> 8;
  *__cil_tmp17 = (unsigned char )__cil_tmp18;
  result = usbat_execute_command(us, command, 8U);
  }
  if (result != 0) {
    return (1);
  } else {
  }
  {
  __cil_tmp19 = (unsigned int )len;
  result = usbat_bulk_read(us, buffer, __cil_tmp19, use_sg);
  }
  if (result != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
static int usbat_write_blocks(struct us_data *us , void *buffer , int len , int use_sg )
{ int result ;
  unsigned char *command ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  unsigned char *__cil_tmp13 ;
  unsigned char *__cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  {
  {
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 376;
  command = *((unsigned char **)__cil_tmp8);
  __cil_tmp9 = command + 0;
  *__cil_tmp9 = (unsigned char)64;
  __cil_tmp10 = command + 1;
  *__cil_tmp10 = (unsigned char)69;
  __cil_tmp11 = command + 2;
  *__cil_tmp11 = (unsigned char)16;
  __cil_tmp12 = command + 3;
  *__cil_tmp12 = (unsigned char)23;
  __cil_tmp13 = command + 4;
  *__cil_tmp13 = (unsigned char)253;
  __cil_tmp14 = command + 5;
  *__cil_tmp14 = (unsigned char)32;
  __cil_tmp15 = command + 6;
  __cil_tmp16 = len & 255;
  *__cil_tmp15 = (unsigned char )__cil_tmp16;
  __cil_tmp17 = command + 7;
  __cil_tmp18 = len >> 8;
  *__cil_tmp17 = (unsigned char )__cil_tmp18;
  result = usbat_execute_command(us, command, 8U);
  }
  if (result != 0) {
    return (1);
  } else {
  }
  {
  __cil_tmp19 = (unsigned int )len;
  result = usbat_bulk_write(us, buffer, __cil_tmp19, use_sg);
  }
  if (result != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
static int usbat_read_user_io(struct us_data *us , unsigned char *data_flags )
{ int result ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  u8 __cil_tmp7 ;
  u8 __cil_tmp8 ;
  u16 __cil_tmp9 ;
  u16 __cil_tmp10 ;
  void *__cil_tmp11 ;
  u16 __cil_tmp12 ;
  unsigned char __cil_tmp13 ;
  unsigned short __cil_tmp14 ;
  int __cil_tmp15 ;
  {
  {
  __cil_tmp4 = (unsigned long )us;
  __cil_tmp5 = __cil_tmp4 + 124;
  __cil_tmp6 = *((unsigned int *)__cil_tmp5);
  __cil_tmp7 = (u8 )130;
  __cil_tmp8 = (u8 )192;
  __cil_tmp9 = (u16 )0;
  __cil_tmp10 = (u16 )0;
  __cil_tmp11 = (void *)data_flags;
  __cil_tmp12 = (u16 )1;
  result = usb_stor_ctrl_transfer(us, __cil_tmp6, __cil_tmp7, __cil_tmp8, __cil_tmp9,
                                  __cil_tmp10, __cil_tmp11, __cil_tmp12);
  __cil_tmp13 = *data_flags;
  __cil_tmp14 = (unsigned short )__cil_tmp13;
  __cil_tmp15 = (int )__cil_tmp14;
  printk("<7>usb-storage: usbat_read_user_io: UIO register reads %02X\n", __cil_tmp15);
  }
  return (result);
}
}
static int usbat_write_user_io(struct us_data *us , unsigned char enable_flags , unsigned char data_flags )
{ int tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  u8 __cil_tmp8 ;
  u8 __cil_tmp9 ;
  u16 __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  u16 __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  u16 __cil_tmp16 ;
  u16 __cil_tmp17 ;
  void *__cil_tmp18 ;
  u16 __cil_tmp19 ;
  {
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 120;
  __cil_tmp7 = *((unsigned int *)__cil_tmp6);
  __cil_tmp8 = (u8 )130;
  __cil_tmp9 = (u8 )64;
  __cil_tmp10 = (u16 )data_flags;
  __cil_tmp11 = (int )__cil_tmp10;
  __cil_tmp12 = __cil_tmp11 << 8;
  __cil_tmp13 = (u16 )enable_flags;
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 | __cil_tmp12;
  __cil_tmp16 = (u16 )__cil_tmp15;
  __cil_tmp17 = (u16 )0;
  __cil_tmp18 = (void *)0;
  __cil_tmp19 = (u16 )0;
  tmp___7 = usb_stor_ctrl_transfer(us, __cil_tmp7, __cil_tmp8, __cil_tmp9, __cil_tmp16,
                                   __cil_tmp17, __cil_tmp18, __cil_tmp19);
  }
  return (tmp___7);
}
}
static int usbat_device_reset(struct us_data *us )
{ int rc ;
  {
  {
  rc = usbat_write_user_io(us, (unsigned char)176, (unsigned char)160);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  rc = usbat_write_user_io(us, (unsigned char)48, (unsigned char)160);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
static int usbat_device_enable_cdt(struct us_data *us )
{ int rc ;
  {
  {
  rc = usbat_write_user_io(us, (unsigned char)112, (unsigned char)160);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
static int usbat_flash_check_media_present(unsigned char *uio )
{ unsigned char __cil_tmp2 ;
  int __cil_tmp3 ;
  {
  {
  __cil_tmp2 = *uio;
  __cil_tmp3 = (int )__cil_tmp2;
  if (__cil_tmp3 & 2) {
    {
    printk("<7>usb-storage: usbat_flash_check_media_present: no media detected\n");
    }
    return (0);
  } else {
  }
  }
  return (1);
}
}
static int usbat_flash_check_media_changed(unsigned char *uio )
{ unsigned char __cil_tmp2 ;
  int __cil_tmp3 ;
  {
  {
  __cil_tmp2 = *uio;
  __cil_tmp3 = (int )__cil_tmp2;
  if (__cil_tmp3 & 16) {
    {
    printk("<7>usb-storage: usbat_flash_check_media_changed: media change detected\n");
    }
    return (1);
  } else {
  }
  }
  return (0);
}
}
static int usbat_flash_check_media(struct us_data *us , struct usbat_info *info )
{ int rc ;
  unsigned char *uio ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  {
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 376;
  uio = *((unsigned char **)__cil_tmp6);
  rc = usbat_read_user_io(us, uio);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  rc = usbat_flash_check_media_present(uio);
  }
  if (rc == 0) {
    __cil_tmp7 = (unsigned long )info;
    __cil_tmp8 = __cil_tmp7 + 24;
    *((unsigned char *)__cil_tmp8) = (unsigned char)2;
    __cil_tmp9 = (unsigned long )info;
    __cil_tmp10 = __cil_tmp9 + 32;
    *((unsigned long *)__cil_tmp10) = 58UL;
    __cil_tmp11 = (unsigned long )info;
    __cil_tmp12 = __cil_tmp11 + 40;
    *((unsigned long *)__cil_tmp12) = 0UL;
    return (1);
  } else {
  }
  {
  rc = usbat_flash_check_media_changed(uio);
  }
  if (rc == 1) {
    {
    rc = usbat_device_reset(us);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    rc = usbat_device_enable_cdt(us);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    msleep(50U);
    rc = usbat_read_user_io(us, uio);
    }
    if (rc != 0) {
      return (3);
    } else {
    }
    __cil_tmp13 = (unsigned long )info;
    __cil_tmp14 = __cil_tmp13 + 24;
    *((unsigned char *)__cil_tmp14) = (unsigned char)6;
    __cil_tmp15 = (unsigned long )info;
    __cil_tmp16 = __cil_tmp15 + 32;
    *((unsigned long *)__cil_tmp16) = 40UL;
    __cil_tmp17 = (unsigned long )info;
    __cil_tmp18 = __cil_tmp17 + 40;
    *((unsigned long *)__cil_tmp18) = 0UL;
    return (1);
  } else {
  }
  return (0);
}
}
static int usbat_identify_device(struct us_data *us , struct usbat_info *info )
{ int rc ;
  unsigned char status ;
  unsigned char *__cil_tmp5 ;
  unsigned char __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  unsigned char __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  if (! us) {
    return (3);
  } else
  if (! info) {
    return (3);
  } else {
  }
  {
  rc = usbat_device_reset(us);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  msleep(500U);
  rc = usbat_write(us, (unsigned char)64, (unsigned char)23, (unsigned char)161);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  rc = usbat_get_status(us, & status);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp5 = & status;
  __cil_tmp6 = *__cil_tmp5;
  __cil_tmp7 = (int )__cil_tmp6;
  if (__cil_tmp7 == 161) {
    {
    printk("<7>usb-storage: usbat_identify_device: Detected HP8200 CDRW\n");
    *((int *)info) = 1;
    }
  } else {
    {
    __cil_tmp8 = & status;
    __cil_tmp9 = *__cil_tmp8;
    __cil_tmp10 = (int )__cil_tmp9;
    __cil_tmp11 = __cil_tmp10 & 1;
    if (! __cil_tmp11) {
      {
      printk("<7>usb-storage: usbat_identify_device: Detected HP8200 CDRW\n");
      *((int *)info) = 1;
      }
    } else {
      {
      printk("<7>usb-storage: usbat_identify_device: Detected Flash reader/writer\n");
      *((int *)info) = 2;
      }
    }
    }
  }
  }
  return (0);
}
}
static int usbat_set_transport(struct us_data *us , struct usbat_info *info , int devicetype )
{ int __cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  {
  {
  __cil_tmp4 = *((int *)info);
  if (! __cil_tmp4) {
    *((int *)info) = devicetype;
  } else {
  }
  }
  {
  __cil_tmp5 = *((int *)info);
  if (! __cil_tmp5) {
    {
    usbat_identify_device(us, info);
    }
  } else {
  }
  }
  if (*((int *)info) == 1) {
    goto case_1;
  } else
  if (*((int *)info) == 2) {
    goto case_2;
  } else {
    {
    goto switch_default;
    if (0) {
      switch_default:
      return (3);
      case_1:
      __cil_tmp6 = (unsigned long )us;
      __cil_tmp7 = __cil_tmp6 + 168;
      *((int (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp7) = & usbat_hp8200e_transport;
      goto switch_break;
      case_2:
      __cil_tmp8 = (unsigned long )us;
      __cil_tmp9 = __cil_tmp8 + 168;
      *((int (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp9) = & usbat_flash_transport;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  return (0);
}
}
static int usbat_flash_get_sector_count(struct us_data *us , struct usbat_info *info )
{ unsigned char registers[3] ;
  unsigned char command[3] ;
  unsigned char *reply ;
  unsigned char status ;
  int rc ;
  void *tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  size_t __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned char *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned char *__cil_tmp28 ;
  void *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned char *__cil_tmp32 ;
  unsigned char __cil_tmp33 ;
  u32 __cil_tmp34 ;
  unsigned char *__cil_tmp35 ;
  unsigned char __cil_tmp36 ;
  u32 __cil_tmp37 ;
  u32 __cil_tmp38 ;
  unsigned char *__cil_tmp39 ;
  unsigned char __cil_tmp40 ;
  u32 __cil_tmp41 ;
  u32 __cil_tmp42 ;
  unsigned char *__cil_tmp43 ;
  unsigned char __cil_tmp44 ;
  u32 __cil_tmp45 ;
  u32 __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  void const *__cil_tmp50 ;
  {
  __cil_tmp10 = 0 * 1UL;
  __cil_tmp11 = (unsigned long )(registers) + __cil_tmp10;
  *((unsigned char *)__cil_tmp11) = (unsigned char)18;
  __cil_tmp12 = 1 * 1UL;
  __cil_tmp13 = (unsigned long )(registers) + __cil_tmp12;
  *((unsigned char *)__cil_tmp13) = (unsigned char)22;
  __cil_tmp14 = 2 * 1UL;
  __cil_tmp15 = (unsigned long )(registers) + __cil_tmp14;
  *((unsigned char *)__cil_tmp15) = (unsigned char)23;
  __cil_tmp16 = 0 * 1UL;
  __cil_tmp17 = (unsigned long )(command) + __cil_tmp16;
  *((unsigned char *)__cil_tmp17) = (unsigned char)1;
  __cil_tmp18 = 1 * 1UL;
  __cil_tmp19 = (unsigned long )(command) + __cil_tmp18;
  *((unsigned char *)__cil_tmp19) = (unsigned char)160;
  __cil_tmp20 = 2 * 1UL;
  __cil_tmp21 = (unsigned long )(command) + __cil_tmp20;
  *((unsigned char *)__cil_tmp21) = (unsigned char)236;
  if (! us) {
    return (3);
  } else
  if (! info) {
    return (3);
  } else {
  }
  {
  __cil_tmp22 = (size_t )512;
  tmp___7 = kmalloc(__cil_tmp22, 16U);
  reply = (unsigned char *)tmp___7;
  }
  if (! reply) {
    return (3);
  } else {
  }
  {
  __cil_tmp23 = 0 * 1UL;
  __cil_tmp24 = (unsigned long )(registers) + __cil_tmp23;
  __cil_tmp25 = (unsigned char *)__cil_tmp24;
  __cil_tmp26 = 0 * 1UL;
  __cil_tmp27 = (unsigned long )(command) + __cil_tmp26;
  __cil_tmp28 = (unsigned char *)__cil_tmp27;
  rc = usbat_multiple_write(us, __cil_tmp25, __cil_tmp28, (unsigned short)3);
  }
  if (rc != 0) {
    {
    printk("<7>usb-storage: usbat_flash_get_sector_count: Gah! identify_device failed\n");
    rc = 3;
    }
    goto leave;
  } else {
  }
  {
  tmp___8 = usbat_get_status(us, & status);
  }
  if (tmp___8 != 0) {
    rc = 3;
    goto leave;
  } else {
  }
  {
  msleep(100U);
  __cil_tmp29 = (void *)reply;
  rc = usbat_read_block(us, __cil_tmp29, (unsigned short)512, 0);
  }
  if (rc != 0) {
    goto leave;
  } else {
  }
  __cil_tmp30 = (unsigned long )info;
  __cil_tmp31 = __cil_tmp30 + 8;
  __cil_tmp32 = reply + 114;
  __cil_tmp33 = *__cil_tmp32;
  __cil_tmp34 = (u32 )__cil_tmp33;
  __cil_tmp35 = reply + 115;
  __cil_tmp36 = *__cil_tmp35;
  __cil_tmp37 = (u32 )__cil_tmp36;
  __cil_tmp38 = __cil_tmp37 << 8;
  __cil_tmp39 = reply + 116;
  __cil_tmp40 = *__cil_tmp39;
  __cil_tmp41 = (u32 )__cil_tmp40;
  __cil_tmp42 = __cil_tmp41 << 16;
  __cil_tmp43 = reply + 117;
  __cil_tmp44 = *__cil_tmp43;
  __cil_tmp45 = (u32 )__cil_tmp44;
  __cil_tmp46 = __cil_tmp45 << 24;
  __cil_tmp47 = __cil_tmp46 | __cil_tmp42;
  __cil_tmp48 = __cil_tmp47 | __cil_tmp38;
  __cil_tmp49 = __cil_tmp48 | __cil_tmp34;
  *((unsigned long *)__cil_tmp31) = (unsigned long )__cil_tmp49;
  rc = 0;
  leave:
  {
  __cil_tmp50 = (void const *)reply;
  kfree(__cil_tmp50);
  }
  return (rc);
}
}
static int usbat_flash_read_data(struct us_data *us , struct usbat_info *info , u32 sector ,
                                 u32 sectors )
{ unsigned char registers[7] ;
  unsigned char command[7] ;
  unsigned char *buffer ;
  unsigned char thistime ;
  unsigned int totallen ;
  unsigned int alloclen ;
  int len ;
  int result ;
  unsigned int sg_offset ;
  struct scatterlist *sg ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp___7 ;
  void *tmp___8 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  unsigned int tmp___9 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned int *__cil_tmp36 ;
  struct scatterlist **__cil_tmp37 ;
  void *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned int *__cil_tmp44 ;
  unsigned int *__cil_tmp45 ;
  unsigned int *__cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  unsigned int *__cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  unsigned int *__cil_tmp50 ;
  unsigned int *__cil_tmp51 ;
  size_t __cil_tmp52 ;
  void *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned int *__cil_tmp56 ;
  unsigned int *__cil_tmp57 ;
  unsigned int *__cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned int *__cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  unsigned int *__cil_tmp62 ;
  unsigned int *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned char *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned char *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned char *__cil_tmp78 ;
  void *__cil_tmp79 ;
  unsigned int __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  struct scsi_cmnd *__cil_tmp83 ;
  enum xfer_buf_dir __cil_tmp84 ;
  u32 __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  void const *__cil_tmp87 ;
  void const *__cil_tmp88 ;
  {
  {
  __cil_tmp22 = 0 * 1UL;
  __cil_tmp23 = (unsigned long )(registers) + __cil_tmp22;
  *((unsigned char *)__cil_tmp23) = (unsigned char)17;
  __cil_tmp24 = 1 * 1UL;
  __cil_tmp25 = (unsigned long )(registers) + __cil_tmp24;
  *((unsigned char *)__cil_tmp25) = (unsigned char)18;
  __cil_tmp26 = 2 * 1UL;
  __cil_tmp27 = (unsigned long )(registers) + __cil_tmp26;
  *((unsigned char *)__cil_tmp27) = (unsigned char)19;
  __cil_tmp28 = 3 * 1UL;
  __cil_tmp29 = (unsigned long )(registers) + __cil_tmp28;
  *((unsigned char *)__cil_tmp29) = (unsigned char)20;
  __cil_tmp30 = 4 * 1UL;
  __cil_tmp31 = (unsigned long )(registers) + __cil_tmp30;
  *((unsigned char *)__cil_tmp31) = (unsigned char)21;
  __cil_tmp32 = 5 * 1UL;
  __cil_tmp33 = (unsigned long )(registers) + __cil_tmp32;
  *((unsigned char *)__cil_tmp33) = (unsigned char)22;
  __cil_tmp34 = 6 * 1UL;
  __cil_tmp35 = (unsigned long )(registers) + __cil_tmp34;
  *((unsigned char *)__cil_tmp35) = (unsigned char)23;
  __cil_tmp36 = & sg_offset;
  *__cil_tmp36 = 0U;
  __cil_tmp37 = & sg;
  __cil_tmp38 = (void *)0;
  *__cil_tmp37 = (struct scatterlist *)__cil_tmp38;
  result = usbat_flash_check_media(us, info);
  }
  if (result != 0) {
    return (result);
  } else {
  }
  if (sector > 268435455U) {
    return (3);
  } else {
  }
  __cil_tmp39 = (unsigned long )info;
  __cil_tmp40 = __cil_tmp39 + 16;
  __cil_tmp41 = *((unsigned long *)__cil_tmp40);
  __cil_tmp42 = (unsigned long )sectors;
  __cil_tmp43 = __cil_tmp42 * __cil_tmp41;
  totallen = (unsigned int )__cil_tmp43;
  __cil_tmp44 = & _min1;
  *__cil_tmp44 = totallen;
  __cil_tmp45 = & _min2;
  *__cil_tmp45 = 65536U;
  {
  __cil_tmp46 = & _min2;
  __cil_tmp47 = *__cil_tmp46;
  __cil_tmp48 = & _min1;
  __cil_tmp49 = *__cil_tmp48;
  if (__cil_tmp49 < __cil_tmp47) {
    __cil_tmp50 = & _min1;
    tmp___7 = *__cil_tmp50;
  } else {
    __cil_tmp51 = & _min2;
    tmp___7 = *__cil_tmp51;
  }
  }
  {
  alloclen = tmp___7;
  __cil_tmp52 = (size_t )alloclen;
  tmp___8 = kmalloc(__cil_tmp52, 16U);
  buffer = (unsigned char *)tmp___8;
  }
  {
  __cil_tmp53 = (void *)0;
  __cil_tmp54 = (unsigned long )__cil_tmp53;
  __cil_tmp55 = (unsigned long )buffer;
  if (__cil_tmp55 == __cil_tmp54) {
    return (3);
  } else {
  }
  }
  {
  while (1) {
    while_continue: ;
    __cil_tmp56 = & _min1___0;
    *__cil_tmp56 = totallen;
    __cil_tmp57 = & _min2___0;
    *__cil_tmp57 = alloclen;
    {
    __cil_tmp58 = & _min2___0;
    __cil_tmp59 = *__cil_tmp58;
    __cil_tmp60 = & _min1___0;
    __cil_tmp61 = *__cil_tmp60;
    if (__cil_tmp61 < __cil_tmp59) {
      __cil_tmp62 = & _min1___0;
      tmp___9 = *__cil_tmp62;
    } else {
      __cil_tmp63 = & _min2___0;
      tmp___9 = *__cil_tmp63;
    }
    }
    {
    len = (int )tmp___9;
    __cil_tmp64 = (unsigned long )info;
    __cil_tmp65 = __cil_tmp64 + 16;
    __cil_tmp66 = *((unsigned long *)__cil_tmp65);
    __cil_tmp67 = (unsigned long )len;
    __cil_tmp68 = __cil_tmp67 / __cil_tmp66;
    __cil_tmp69 = __cil_tmp68 & 255UL;
    thistime = (unsigned char )__cil_tmp69;
    __cil_tmp70 = 0 * 1UL;
    __cil_tmp71 = (unsigned long )(command) + __cil_tmp70;
    __cil_tmp72 = (unsigned char *)__cil_tmp71;
    usbat_pack_ata_sector_cmd(__cil_tmp72, thistime, sector, (unsigned char)32);
    __cil_tmp73 = 0 * 1UL;
    __cil_tmp74 = (unsigned long )(registers) + __cil_tmp73;
    __cil_tmp75 = (unsigned char *)__cil_tmp74;
    __cil_tmp76 = 0 * 1UL;
    __cil_tmp77 = (unsigned long )(command) + __cil_tmp76;
    __cil_tmp78 = (unsigned char *)__cil_tmp77;
    result = usbat_multiple_write(us, __cil_tmp75, __cil_tmp78, (unsigned short)7);
    }
    if (result != 0) {
      goto leave;
    } else {
    }
    {
    __cil_tmp79 = (void *)buffer;
    result = usbat_read_blocks(us, __cil_tmp79, len, 0);
    }
    if (result != 0) {
      goto leave;
    } else {
    }
    {
    printk("<7>usb-storage: usbat_flash_read_data:  %d bytes\n", len);
    __cil_tmp80 = (unsigned int )len;
    __cil_tmp81 = (unsigned long )us;
    __cil_tmp82 = __cil_tmp81 + 192;
    __cil_tmp83 = *((struct scsi_cmnd **)__cil_tmp82);
    __cil_tmp84 = (enum xfer_buf_dir )0;
    usb_stor_access_xfer_buf(buffer, __cil_tmp80, __cil_tmp83, & sg, & sg_offset,
                             __cil_tmp84);
    __cil_tmp85 = (u32 )thistime;
    sector = sector + __cil_tmp85;
    __cil_tmp86 = (unsigned int )len;
    totallen = totallen - __cil_tmp86;
    }
    if (totallen > 0U) {
    } else {
      goto while_break;
    }
  }
  while_break: ;
  }
  {
  __cil_tmp87 = (void const *)buffer;
  kfree(__cil_tmp87);
  }
  return (0);
  leave:
  {
  __cil_tmp88 = (void const *)buffer;
  kfree(__cil_tmp88);
  }
  return (3);
}
}
static int usbat_flash_write_data(struct us_data *us , struct usbat_info *info , u32 sector ,
                                  u32 sectors )
{ unsigned char registers[7] ;
  unsigned char command[7] ;
  unsigned char *buffer ;
  unsigned char thistime ;
  unsigned int totallen ;
  unsigned int alloclen ;
  int len ;
  int result ;
  unsigned int sg_offset ;
  struct scatterlist *sg ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp___7 ;
  void *tmp___8 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  unsigned int tmp___9 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned int *__cil_tmp36 ;
  struct scatterlist **__cil_tmp37 ;
  void *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned int *__cil_tmp44 ;
  unsigned int *__cil_tmp45 ;
  unsigned int *__cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  unsigned int *__cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  unsigned int *__cil_tmp50 ;
  unsigned int *__cil_tmp51 ;
  size_t __cil_tmp52 ;
  void *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned int *__cil_tmp56 ;
  unsigned int *__cil_tmp57 ;
  unsigned int *__cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned int *__cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  unsigned int *__cil_tmp62 ;
  unsigned int *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned int __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  struct scsi_cmnd *__cil_tmp73 ;
  enum xfer_buf_dir __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned char *__cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned char *__cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned char *__cil_tmp83 ;
  void *__cil_tmp84 ;
  u32 __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  void const *__cil_tmp87 ;
  void const *__cil_tmp88 ;
  {
  {
  __cil_tmp22 = 0 * 1UL;
  __cil_tmp23 = (unsigned long )(registers) + __cil_tmp22;
  *((unsigned char *)__cil_tmp23) = (unsigned char)17;
  __cil_tmp24 = 1 * 1UL;
  __cil_tmp25 = (unsigned long )(registers) + __cil_tmp24;
  *((unsigned char *)__cil_tmp25) = (unsigned char)18;
  __cil_tmp26 = 2 * 1UL;
  __cil_tmp27 = (unsigned long )(registers) + __cil_tmp26;
  *((unsigned char *)__cil_tmp27) = (unsigned char)19;
  __cil_tmp28 = 3 * 1UL;
  __cil_tmp29 = (unsigned long )(registers) + __cil_tmp28;
  *((unsigned char *)__cil_tmp29) = (unsigned char)20;
  __cil_tmp30 = 4 * 1UL;
  __cil_tmp31 = (unsigned long )(registers) + __cil_tmp30;
  *((unsigned char *)__cil_tmp31) = (unsigned char)21;
  __cil_tmp32 = 5 * 1UL;
  __cil_tmp33 = (unsigned long )(registers) + __cil_tmp32;
  *((unsigned char *)__cil_tmp33) = (unsigned char)22;
  __cil_tmp34 = 6 * 1UL;
  __cil_tmp35 = (unsigned long )(registers) + __cil_tmp34;
  *((unsigned char *)__cil_tmp35) = (unsigned char)23;
  __cil_tmp36 = & sg_offset;
  *__cil_tmp36 = 0U;
  __cil_tmp37 = & sg;
  __cil_tmp38 = (void *)0;
  *__cil_tmp37 = (struct scatterlist *)__cil_tmp38;
  result = usbat_flash_check_media(us, info);
  }
  if (result != 0) {
    return (result);
  } else {
  }
  if (sector > 268435455U) {
    return (3);
  } else {
  }
  __cil_tmp39 = (unsigned long )info;
  __cil_tmp40 = __cil_tmp39 + 16;
  __cil_tmp41 = *((unsigned long *)__cil_tmp40);
  __cil_tmp42 = (unsigned long )sectors;
  __cil_tmp43 = __cil_tmp42 * __cil_tmp41;
  totallen = (unsigned int )__cil_tmp43;
  __cil_tmp44 = & _min1;
  *__cil_tmp44 = totallen;
  __cil_tmp45 = & _min2;
  *__cil_tmp45 = 65536U;
  {
  __cil_tmp46 = & _min2;
  __cil_tmp47 = *__cil_tmp46;
  __cil_tmp48 = & _min1;
  __cil_tmp49 = *__cil_tmp48;
  if (__cil_tmp49 < __cil_tmp47) {
    __cil_tmp50 = & _min1;
    tmp___7 = *__cil_tmp50;
  } else {
    __cil_tmp51 = & _min2;
    tmp___7 = *__cil_tmp51;
  }
  }
  {
  alloclen = tmp___7;
  __cil_tmp52 = (size_t )alloclen;
  tmp___8 = kmalloc(__cil_tmp52, 16U);
  buffer = (unsigned char *)tmp___8;
  }
  {
  __cil_tmp53 = (void *)0;
  __cil_tmp54 = (unsigned long )__cil_tmp53;
  __cil_tmp55 = (unsigned long )buffer;
  if (__cil_tmp55 == __cil_tmp54) {
    return (3);
  } else {
  }
  }
  {
  while (1) {
    while_continue: ;
    __cil_tmp56 = & _min1___0;
    *__cil_tmp56 = totallen;
    __cil_tmp57 = & _min2___0;
    *__cil_tmp57 = alloclen;
    {
    __cil_tmp58 = & _min2___0;
    __cil_tmp59 = *__cil_tmp58;
    __cil_tmp60 = & _min1___0;
    __cil_tmp61 = *__cil_tmp60;
    if (__cil_tmp61 < __cil_tmp59) {
      __cil_tmp62 = & _min1___0;
      tmp___9 = *__cil_tmp62;
    } else {
      __cil_tmp63 = & _min2___0;
      tmp___9 = *__cil_tmp63;
    }
    }
    {
    len = (int )tmp___9;
    __cil_tmp64 = (unsigned long )info;
    __cil_tmp65 = __cil_tmp64 + 16;
    __cil_tmp66 = *((unsigned long *)__cil_tmp65);
    __cil_tmp67 = (unsigned long )len;
    __cil_tmp68 = __cil_tmp67 / __cil_tmp66;
    __cil_tmp69 = __cil_tmp68 & 255UL;
    thistime = (unsigned char )__cil_tmp69;
    __cil_tmp70 = (unsigned int )len;
    __cil_tmp71 = (unsigned long )us;
    __cil_tmp72 = __cil_tmp71 + 192;
    __cil_tmp73 = *((struct scsi_cmnd **)__cil_tmp72);
    __cil_tmp74 = (enum xfer_buf_dir )1;
    usb_stor_access_xfer_buf(buffer, __cil_tmp70, __cil_tmp73, & sg, & sg_offset,
                             __cil_tmp74);
    __cil_tmp75 = 0 * 1UL;
    __cil_tmp76 = (unsigned long )(command) + __cil_tmp75;
    __cil_tmp77 = (unsigned char *)__cil_tmp76;
    usbat_pack_ata_sector_cmd(__cil_tmp77, thistime, sector, (unsigned char)48);
    __cil_tmp78 = 0 * 1UL;
    __cil_tmp79 = (unsigned long )(registers) + __cil_tmp78;
    __cil_tmp80 = (unsigned char *)__cil_tmp79;
    __cil_tmp81 = 0 * 1UL;
    __cil_tmp82 = (unsigned long )(command) + __cil_tmp81;
    __cil_tmp83 = (unsigned char *)__cil_tmp82;
    result = usbat_multiple_write(us, __cil_tmp80, __cil_tmp83, (unsigned short)7);
    }
    if (result != 0) {
      goto leave;
    } else {
    }
    {
    __cil_tmp84 = (void *)buffer;
    result = usbat_write_blocks(us, __cil_tmp84, len, 0);
    }
    if (result != 0) {
      goto leave;
    } else {
    }
    __cil_tmp85 = (u32 )thistime;
    sector = sector + __cil_tmp85;
    __cil_tmp86 = (unsigned int )len;
    totallen = totallen - __cil_tmp86;
    if (totallen > 0U) {
    } else {
      goto while_break;
    }
  }
  while_break: ;
  }
  {
  __cil_tmp87 = (void const *)buffer;
  kfree(__cil_tmp87);
  }
  return (result);
  leave:
  {
  __cil_tmp88 = (void const *)buffer;
  kfree(__cil_tmp88);
  }
  return (3);
}
}
static int usbat_hp8200e_handle_read10(struct us_data *us , unsigned char *registers ,
                                       unsigned char *data , struct scsi_cmnd *srb )
{ int result ;
  unsigned char *buffer ;
  unsigned int len ;
  unsigned int sector ;
  unsigned int sg_offset ;
  struct scatterlist *sg ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  struct scatterlist *tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int tmp___11 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp___12 ;
  unsigned int tmp___13 ;
  void *tmp___14 ;
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  unsigned int tmp___17 ;
  unsigned int *__cil_tmp24 ;
  struct scatterlist **__cil_tmp25 ;
  void *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  void *__cil_tmp30 ;
  unsigned short __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned char *__cil_tmp33 ;
  unsigned char __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned char *__cil_tmp36 ;
  unsigned char __cil_tmp37 ;
  u16 __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned char *__cil_tmp41 ;
  unsigned char __cil_tmp42 ;
  u16 __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned char *__cil_tmp46 ;
  unsigned char __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned int __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned int __cil_tmp64 ;
  unsigned int __cil_tmp65 ;
  unsigned int *__cil_tmp66 ;
  unsigned int *__cil_tmp67 ;
  unsigned int *__cil_tmp68 ;
  unsigned int __cil_tmp69 ;
  unsigned int *__cil_tmp70 ;
  unsigned int __cil_tmp71 ;
  unsigned int *__cil_tmp72 ;
  unsigned int *__cil_tmp73 ;
  size_t __cil_tmp74 ;
  void *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned char *__cil_tmp78 ;
  unsigned char __cil_tmp79 ;
  u16 __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  unsigned char *__cil_tmp83 ;
  unsigned char __cil_tmp84 ;
  u16 __cil_tmp85 ;
  int __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned char *__cil_tmp88 ;
  unsigned char __cil_tmp89 ;
  u16 __cil_tmp90 ;
  int __cil_tmp91 ;
  int __cil_tmp92 ;
  unsigned char *__cil_tmp93 ;
  unsigned char __cil_tmp94 ;
  u16 __cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  unsigned int __cil_tmp98 ;
  unsigned int __cil_tmp99 ;
  unsigned int __cil_tmp100 ;
  unsigned int __cil_tmp101 ;
  unsigned int __cil_tmp102 ;
  unsigned char *__cil_tmp103 ;
  unsigned int __cil_tmp104 ;
  unsigned char *__cil_tmp105 ;
  unsigned int __cil_tmp106 ;
  unsigned int __cil_tmp107 ;
  unsigned char *__cil_tmp108 ;
  unsigned int __cil_tmp109 ;
  unsigned int __cil_tmp110 ;
  unsigned char *__cil_tmp111 ;
  unsigned int __cil_tmp112 ;
  unsigned int __cil_tmp113 ;
  unsigned char *__cil_tmp114 ;
  unsigned int __cil_tmp115 ;
  unsigned int __cil_tmp116 ;
  unsigned char *__cil_tmp117 ;
  unsigned int __cil_tmp118 ;
  unsigned int __cil_tmp119 ;
  unsigned char *__cil_tmp120 ;
  unsigned char __cil_tmp121 ;
  int __cil_tmp122 ;
  unsigned char *__cil_tmp123 ;
  unsigned char *__cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned int __cil_tmp127 ;
  unsigned int __cil_tmp128 ;
  unsigned int __cil_tmp129 ;
  unsigned char *__cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned int __cil_tmp133 ;
  unsigned int __cil_tmp134 ;
  unsigned int __cil_tmp135 ;
  void *__cil_tmp136 ;
  unsigned short __cil_tmp137 ;
  enum xfer_buf_dir __cil_tmp138 ;
  unsigned int __cil_tmp139 ;
  unsigned int __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned int __cil_tmp143 ;
  unsigned int __cil_tmp144 ;
  void const *__cil_tmp145 ;
  {
  {
  result = 0;
  __cil_tmp24 = & sg_offset;
  *__cil_tmp24 = 0U;
  __cil_tmp25 = & sg;
  __cil_tmp26 = (void *)0;
  *__cil_tmp25 = (struct scatterlist *)__cil_tmp26;
  __cil_tmp27 = (unsigned long )srb;
  __cil_tmp28 = __cil_tmp27 + 124;
  __cil_tmp29 = *((unsigned int *)__cil_tmp28);
  printk("<7>usb-storage: handle_read10: transfersize %d\n", __cil_tmp29);
  tmp___10 = scsi_bufflen(srb);
  }
  if (tmp___10 < 65536U) {
    {
    tmp___7 = scsi_sg_count(srb);
    tmp___8 = scsi_bufflen(srb);
    tmp___9 = scsi_sglist(srb);
    __cil_tmp30 = (void *)tmp___9;
    __cil_tmp31 = (unsigned short )tmp___8;
    __cil_tmp32 = (int )tmp___7;
    result = usbat_hp8200e_rw_block_test(us, (unsigned char)64, registers, data, (unsigned short)19,
                                         (unsigned char)16, (unsigned char)23, (unsigned char)253,
                                         (unsigned char)48, 2, __cil_tmp30, __cil_tmp31,
                                         __cil_tmp32, 1);
    }
    return (result);
  } else {
  }
  {
  __cil_tmp33 = data + 7;
  __cil_tmp34 = *__cil_tmp33;
  __cil_tmp35 = (int )__cil_tmp34;
  if (__cil_tmp35 == 190) {
    {
    __cil_tmp36 = data + 15;
    __cil_tmp37 = *__cil_tmp36;
    __cil_tmp38 = (u16 )__cil_tmp37;
    __cil_tmp39 = (int )__cil_tmp38;
    __cil_tmp40 = __cil_tmp39 << 8;
    __cil_tmp41 = data + 16;
    __cil_tmp42 = *__cil_tmp41;
    __cil_tmp43 = (u16 )__cil_tmp42;
    __cil_tmp44 = (int )__cil_tmp43;
    __cil_tmp45 = __cil_tmp44 | __cil_tmp40;
    len = (unsigned int )__cil_tmp45;
    len = len << 16;
    __cil_tmp46 = data + 14;
    __cil_tmp47 = *__cil_tmp46;
    __cil_tmp48 = (unsigned int )__cil_tmp47;
    len = len | __cil_tmp48;
    printk("<7>usb-storage: handle_read10: GPCMD_READ_CD: len %d\n", len);
    tmp___11 = scsi_bufflen(srb);
    __cil_tmp49 = (unsigned long )srb;
    __cil_tmp50 = __cil_tmp49 + 124;
    *((unsigned int *)__cil_tmp50) = tmp___11 / len;
    }
  } else {
  }
  }
  {
  __cil_tmp51 = (unsigned long )srb;
  __cil_tmp52 = __cil_tmp51 + 124;
  __cil_tmp53 = *((unsigned int *)__cil_tmp52);
  if (! __cil_tmp53) {
    {
    __cil_tmp54 = (unsigned long )srb;
    __cil_tmp55 = __cil_tmp54 + 124;
    *((unsigned int *)__cil_tmp55) = 2048U;
    __cil_tmp56 = (unsigned long )srb;
    __cil_tmp57 = __cil_tmp56 + 124;
    __cil_tmp58 = *((unsigned int *)__cil_tmp57);
    printk("<7>usb-storage: handle_read10: transfersize 0, forcing %d\n", __cil_tmp58);
    }
  } else {
  }
  }
  {
  __cil_tmp59 = (unsigned long )srb;
  __cil_tmp60 = __cil_tmp59 + 124;
  __cil_tmp61 = *((unsigned int *)__cil_tmp60);
  __cil_tmp62 = (unsigned long )srb;
  __cil_tmp63 = __cil_tmp62 + 124;
  __cil_tmp64 = *((unsigned int *)__cil_tmp63);
  __cil_tmp65 = 65535U / __cil_tmp64;
  len = __cil_tmp65 * __cil_tmp61;
  printk("<7>usb-storage: Max read is %d bytes\n", len);
  __cil_tmp66 = & _min1;
  *__cil_tmp66 = len;
  tmp___12 = scsi_bufflen(srb);
  __cil_tmp67 = & _min2;
  *__cil_tmp67 = tmp___12;
  }
  {
  __cil_tmp68 = & _min2;
  __cil_tmp69 = *__cil_tmp68;
  __cil_tmp70 = & _min1;
  __cil_tmp71 = *__cil_tmp70;
  if (__cil_tmp71 < __cil_tmp69) {
    __cil_tmp72 = & _min1;
    tmp___13 = *__cil_tmp72;
  } else {
    __cil_tmp73 = & _min2;
    tmp___13 = *__cil_tmp73;
  }
  }
  {
  len = tmp___13;
  __cil_tmp74 = (size_t )len;
  tmp___14 = kmalloc(__cil_tmp74, 16U);
  buffer = (unsigned char *)tmp___14;
  }
  {
  __cil_tmp75 = (void *)0;
  __cil_tmp76 = (unsigned long )__cil_tmp75;
  __cil_tmp77 = (unsigned long )buffer;
  if (__cil_tmp77 == __cil_tmp76) {
    return (1);
  } else {
  }
  }
  __cil_tmp78 = data + 9;
  __cil_tmp79 = *__cil_tmp78;
  __cil_tmp80 = (u16 )__cil_tmp79;
  __cil_tmp81 = (int )__cil_tmp80;
  __cil_tmp82 = __cil_tmp81 << 8;
  __cil_tmp83 = data + 10;
  __cil_tmp84 = *__cil_tmp83;
  __cil_tmp85 = (u16 )__cil_tmp84;
  __cil_tmp86 = (int )__cil_tmp85;
  __cil_tmp87 = __cil_tmp86 | __cil_tmp82;
  sector = (unsigned int )__cil_tmp87;
  sector = sector << 16;
  __cil_tmp88 = data + 11;
  __cil_tmp89 = *__cil_tmp88;
  __cil_tmp90 = (u16 )__cil_tmp89;
  __cil_tmp91 = (int )__cil_tmp90;
  __cil_tmp92 = __cil_tmp91 << 8;
  __cil_tmp93 = data + 12;
  __cil_tmp94 = *__cil_tmp93;
  __cil_tmp95 = (u16 )__cil_tmp94;
  __cil_tmp96 = (int )__cil_tmp95;
  __cil_tmp97 = __cil_tmp96 | __cil_tmp92;
  __cil_tmp98 = (unsigned int )__cil_tmp97;
  sector = sector | __cil_tmp98;
  transferred = 0;
  {
  while (1) {
    while_continue: ;
    {
    tmp___17 = scsi_bufflen(srb);
    }
    {
    __cil_tmp99 = (unsigned int )transferred;
    if (__cil_tmp99 != tmp___17) {
    } else {
      goto while_break;
    }
    }
    {
    tmp___16 = scsi_bufflen(srb);
    }
    {
    __cil_tmp100 = (unsigned int )transferred;
    __cil_tmp101 = tmp___16 - __cil_tmp100;
    if (len > __cil_tmp101) {
      {
      tmp___15 = scsi_bufflen(srb);
      __cil_tmp102 = (unsigned int )transferred;
      len = tmp___15 - __cil_tmp102;
      }
    } else {
    }
    }
    __cil_tmp103 = data + 3;
    __cil_tmp104 = len & 255U;
    *__cil_tmp103 = (unsigned char )__cil_tmp104;
    __cil_tmp105 = data + 4;
    __cil_tmp106 = len >> 8;
    __cil_tmp107 = __cil_tmp106 & 255U;
    *__cil_tmp105 = (unsigned char )__cil_tmp107;
    __cil_tmp108 = data + 9;
    __cil_tmp109 = sector >> 16;
    __cil_tmp110 = __cil_tmp109 >> 8;
    *__cil_tmp108 = (unsigned char )__cil_tmp110;
    __cil_tmp111 = data + 10;
    __cil_tmp112 = sector >> 16;
    __cil_tmp113 = __cil_tmp112 & 255U;
    *__cil_tmp111 = (unsigned char )__cil_tmp113;
    __cil_tmp114 = data + 11;
    __cil_tmp115 = sector & 65535U;
    __cil_tmp116 = __cil_tmp115 >> 8;
    *__cil_tmp114 = (unsigned char )__cil_tmp116;
    __cil_tmp117 = data + 12;
    __cil_tmp118 = sector & 65535U;
    __cil_tmp119 = __cil_tmp118 & 255U;
    *__cil_tmp117 = (unsigned char )__cil_tmp119;
    {
    __cil_tmp120 = data + 7;
    __cil_tmp121 = *__cil_tmp120;
    __cil_tmp122 = (int )__cil_tmp121;
    if (__cil_tmp122 == 190) {
      __cil_tmp123 = data + 13;
      *__cil_tmp123 = (unsigned char)0;
    } else {
    }
    }
    {
    __cil_tmp124 = data + 14;
    __cil_tmp125 = (unsigned long )srb;
    __cil_tmp126 = __cil_tmp125 + 124;
    __cil_tmp127 = *((unsigned int *)__cil_tmp126);
    __cil_tmp128 = len / __cil_tmp127;
    __cil_tmp129 = __cil_tmp128 >> 8;
    *__cil_tmp124 = (unsigned char )__cil_tmp129;
    __cil_tmp130 = data + 15;
    __cil_tmp131 = (unsigned long )srb;
    __cil_tmp132 = __cil_tmp131 + 124;
    __cil_tmp133 = *((unsigned int *)__cil_tmp132);
    __cil_tmp134 = len / __cil_tmp133;
    __cil_tmp135 = __cil_tmp134 & 255U;
    *__cil_tmp130 = (unsigned char )__cil_tmp135;
    __cil_tmp136 = (void *)buffer;
    __cil_tmp137 = (unsigned short )len;
    result = usbat_hp8200e_rw_block_test(us, (unsigned char)64, registers, data, (unsigned short)19,
                                         (unsigned char)16, (unsigned char)23, (unsigned char)253,
                                         (unsigned char)48, 2, __cil_tmp136, __cil_tmp137,
                                         0, 1);
    }
    if (result != 0) {
      goto while_break;
    } else {
    }
    {
    __cil_tmp138 = (enum xfer_buf_dir )0;
    usb_stor_access_xfer_buf(buffer, len, srb, & sg, & sg_offset, __cil_tmp138);
    __cil_tmp139 = (unsigned int )transferred;
    __cil_tmp140 = __cil_tmp139 + len;
    transferred = (int )__cil_tmp140;
    __cil_tmp141 = (unsigned long )srb;
    __cil_tmp142 = __cil_tmp141 + 124;
    __cil_tmp143 = *((unsigned int *)__cil_tmp142);
    __cil_tmp144 = len / __cil_tmp143;
    sector = sector + __cil_tmp144;
    }
  }
  while_break: ;
  }
  {
  __cil_tmp145 = (void const *)buffer;
  kfree(__cil_tmp145);
  }
  return (result);
}
}
static int usbat_select_and_test_registers(struct us_data *us )
{ int selector ;
  unsigned char *status ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned char __cil_tmp15 ;
  {
  __cil_tmp13 = (unsigned long )us;
  __cil_tmp14 = __cil_tmp13 + 376;
  status = *((unsigned char **)__cil_tmp14);
  selector = 160;
  {
  while (1) {
    while_continue: ;
    if (selector <= 176) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp15 = (unsigned char )selector;
    tmp___7 = usbat_write(us, (unsigned char)64, (unsigned char)22, __cil_tmp15);
    }
    if (tmp___7 != 0) {
      return (3);
    } else {
    }
    {
    tmp___8 = usbat_read(us, (unsigned char)64, (unsigned char)23, status);
    }
    if (tmp___8 != 0) {
      return (3);
    } else {
    }
    {
    tmp___9 = usbat_read(us, (unsigned char)64, (unsigned char)22, status);
    }
    if (tmp___9 != 0) {
      return (3);
    } else {
    }
    {
    tmp___10 = usbat_read(us, (unsigned char)64, (unsigned char)20, status);
    }
    if (tmp___10 != 0) {
      return (3);
    } else {
    }
    {
    tmp___11 = usbat_read(us, (unsigned char)64, (unsigned char)21, status);
    }
    if (tmp___11 != 0) {
      return (3);
    } else {
    }
    {
    tmp___12 = usbat_write(us, (unsigned char)64, (unsigned char)20, (unsigned char)85);
    }
    if (tmp___12 != 0) {
      return (3);
    } else {
    }
    {
    tmp___13 = usbat_write(us, (unsigned char)64, (unsigned char)21, (unsigned char)170);
    }
    if (tmp___13 != 0) {
      return (3);
    } else {
    }
    {
    tmp___14 = usbat_read(us, (unsigned char)64, (unsigned char)20, status);
    }
    if (tmp___14 != 0) {
      return (3);
    } else {
    }
    {
    tmp___15 = usbat_read(us, (unsigned char)64, (unsigned char)20, status);
    }
    if (tmp___15 != 0) {
      return (3);
    } else {
    }
    selector = selector + 16;
  }
  while_break: ;
  }
  return (0);
}
}
static int init_usbat(struct us_data *us , int devicetype )
{ int rc ;
  struct usbat_info *info ;
  unsigned char subcountH ;
  unsigned char subcountL ;
  unsigned char *status ;
  int tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  void *__cil_tmp19 ;
  {
  {
  subcountH = (unsigned char)21;
  subcountL = (unsigned char)20;
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 376;
  status = *((unsigned char **)__cil_tmp11);
  __cil_tmp12 = (unsigned long )us;
  __cil_tmp13 = __cil_tmp12 + 648;
  *((void **)__cil_tmp13) = kzalloc(48UL, 16U);
  }
  {
  __cil_tmp14 = (unsigned long )us;
  __cil_tmp15 = __cil_tmp14 + 648;
  __cil_tmp16 = *((void **)__cil_tmp15);
  if (! __cil_tmp16) {
    {
    printk("<7>usb-storage: init_usbat: Gah! Can\'t allocate storage for usbat info struct!\n");
    }
    return (1);
  } else {
  }
  }
  {
  __cil_tmp17 = (unsigned long )us;
  __cil_tmp18 = __cil_tmp17 + 648;
  __cil_tmp19 = *((void **)__cil_tmp18);
  info = (struct usbat_info *)__cil_tmp19;
  rc = usbat_write_user_io(us, (unsigned char)48, (unsigned char)160);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 1\n");
  msleep(2000U);
  rc = usbat_read_user_io(us, status);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 2\n");
  rc = usbat_read_user_io(us, status);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  rc = usbat_read_user_io(us, status);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 3\n");
  rc = usbat_select_and_test_registers(us);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 4\n");
  rc = usbat_read_user_io(us, status);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 5\n");
  rc = usbat_device_enable_cdt(us);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 6\n");
  rc = usbat_read_user_io(us, status);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 7\n");
  msleep(1400U);
  rc = usbat_read_user_io(us, status);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 8\n");
  rc = usbat_select_and_test_registers(us);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 9\n");
  tmp___7 = usbat_set_transport(us, info, devicetype);
  }
  if (tmp___7) {
    return (3);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 10\n");
  tmp___8 = usbat_get_device_type(us);
  }
  if (tmp___8 == 2) {
    subcountH = (unsigned char)2;
    subcountL = (unsigned char)0;
  } else {
  }
  {
  rc = usbat_set_shuttle_features(us, (unsigned char)131, (unsigned char)0, (unsigned char)136,
                                  (unsigned char)8, subcountH, subcountL);
  }
  if (rc != 0) {
    return (3);
  } else {
  }
  {
  printk("<7>usb-storage: INIT 11\n");
  }
  return (0);
}
}
static int usbat_hp8200e_transport(struct scsi_cmnd *srb , struct us_data *us )
{ int result ;
  unsigned char *status ;
  unsigned char registers[32] ;
  unsigned char data[32] ;
  unsigned int len ;
  int i ;
  unsigned int tmp___7 ;
  struct scatterlist *tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  unsigned int tmp___13 ;
  struct scatterlist *tmp___14 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned short __cil_tmp54 ;
  int __cil_tmp55 ;
  int __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned char *__cil_tmp64 ;
  unsigned char *__cil_tmp65 ;
  unsigned char __cil_tmp66 ;
  int __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned char *__cil_tmp70 ;
  unsigned char *__cil_tmp71 ;
  unsigned char __cil_tmp72 ;
  int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  enum dma_data_direction __cil_tmp76 ;
  unsigned int __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned char *__cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned char *__cil_tmp83 ;
  void *__cil_tmp84 ;
  unsigned short __cil_tmp85 ;
  int __cil_tmp86 ;
  unsigned int __cil_tmp87 ;
  unsigned int __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned char *__cil_tmp91 ;
  unsigned char *__cil_tmp92 ;
  unsigned char __cil_tmp93 ;
  int __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned char *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned char *__cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned char *__cil_tmp103 ;
  unsigned char *__cil_tmp104 ;
  unsigned char __cil_tmp105 ;
  int __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned char *__cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned char *__cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned char *__cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned char *__cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned char *__cil_tmp121 ;
  unsigned char *__cil_tmp122 ;
  unsigned char __cil_tmp123 ;
  int __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned char *__cil_tmp127 ;
  void *__cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  enum dma_data_direction __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  unsigned char __cil_tmp133 ;
  unsigned char __cil_tmp134 ;
  unsigned int __cil_tmp135 ;
  unsigned int __cil_tmp136 ;
  unsigned char __cil_tmp137 ;
  void *__cil_tmp138 ;
  unsigned short __cil_tmp139 ;
  int __cil_tmp140 ;
  {
  {
  __cil_tmp17 = (unsigned long )us;
  __cil_tmp18 = __cil_tmp17 + 376;
  status = *((unsigned char **)__cil_tmp18);
  len = scsi_bufflen(srb);
  __cil_tmp19 = 0 * 1UL;
  __cil_tmp20 = (unsigned long )(registers) + __cil_tmp19;
  *((unsigned char *)__cil_tmp20) = (unsigned char)17;
  __cil_tmp21 = 1 * 1UL;
  __cil_tmp22 = (unsigned long )(registers) + __cil_tmp21;
  *((unsigned char *)__cil_tmp22) = (unsigned char)18;
  __cil_tmp23 = 2 * 1UL;
  __cil_tmp24 = (unsigned long )(registers) + __cil_tmp23;
  *((unsigned char *)__cil_tmp24) = (unsigned char)19;
  __cil_tmp25 = 3 * 1UL;
  __cil_tmp26 = (unsigned long )(registers) + __cil_tmp25;
  *((unsigned char *)__cil_tmp26) = (unsigned char)20;
  __cil_tmp27 = 4 * 1UL;
  __cil_tmp28 = (unsigned long )(registers) + __cil_tmp27;
  *((unsigned char *)__cil_tmp28) = (unsigned char)21;
  __cil_tmp29 = 5 * 1UL;
  __cil_tmp30 = (unsigned long )(registers) + __cil_tmp29;
  *((unsigned char *)__cil_tmp30) = (unsigned char)22;
  __cil_tmp31 = 6 * 1UL;
  __cil_tmp32 = (unsigned long )(registers) + __cil_tmp31;
  *((unsigned char *)__cil_tmp32) = (unsigned char)23;
  __cil_tmp33 = 0 * 1UL;
  __cil_tmp34 = (unsigned long )(data) + __cil_tmp33;
  *((unsigned char *)__cil_tmp34) = (unsigned char)0;
  __cil_tmp35 = 1 * 1UL;
  __cil_tmp36 = (unsigned long )(data) + __cil_tmp35;
  *((unsigned char *)__cil_tmp36) = (unsigned char)0;
  __cil_tmp37 = 2 * 1UL;
  __cil_tmp38 = (unsigned long )(data) + __cil_tmp37;
  *((unsigned char *)__cil_tmp38) = (unsigned char)0;
  __cil_tmp39 = 3 * 1UL;
  __cil_tmp40 = (unsigned long )(data) + __cil_tmp39;
  __cil_tmp41 = len & 255U;
  *((unsigned char *)__cil_tmp40) = (unsigned char )__cil_tmp41;
  __cil_tmp42 = 4 * 1UL;
  __cil_tmp43 = (unsigned long )(data) + __cil_tmp42;
  __cil_tmp44 = len >> 8;
  __cil_tmp45 = __cil_tmp44 & 255U;
  *((unsigned char *)__cil_tmp43) = (unsigned char )__cil_tmp45;
  __cil_tmp46 = 5 * 1UL;
  __cil_tmp47 = (unsigned long )(data) + __cil_tmp46;
  *((unsigned char *)__cil_tmp47) = (unsigned char)176;
  __cil_tmp48 = 6 * 1UL;
  __cil_tmp49 = (unsigned long )(data) + __cil_tmp48;
  *((unsigned char *)__cil_tmp49) = (unsigned char)160;
  i = 7;
  }
  {
  while (1) {
    while_continue: ;
    if (i < 19) {
    } else {
      goto while_break;
    }
    __cil_tmp50 = i * 1UL;
    __cil_tmp51 = (unsigned long )(registers) + __cil_tmp50;
    *((unsigned char *)__cil_tmp51) = (unsigned char)16;
    {
    __cil_tmp52 = (unsigned long )srb;
    __cil_tmp53 = __cil_tmp52 + 74;
    __cil_tmp54 = *((unsigned short *)__cil_tmp53);
    __cil_tmp55 = (int )__cil_tmp54;
    __cil_tmp56 = i - 7;
    if (__cil_tmp56 >= __cil_tmp55) {
      __cil_tmp57 = i * 1UL;
      __cil_tmp58 = (unsigned long )(data) + __cil_tmp57;
      *((unsigned char *)__cil_tmp58) = (unsigned char)0;
    } else {
      __cil_tmp59 = i * 1UL;
      __cil_tmp60 = (unsigned long )(data) + __cil_tmp59;
      __cil_tmp61 = i - 7;
      __cil_tmp62 = (unsigned long )srb;
      __cil_tmp63 = __cil_tmp62 + 80;
      __cil_tmp64 = *((unsigned char **)__cil_tmp63);
      __cil_tmp65 = __cil_tmp64 + __cil_tmp61;
      *((unsigned char *)__cil_tmp60) = *__cil_tmp65;
    }
    }
    i = i + 1;
  }
  while_break: ;
  }
  {
  result = usbat_get_status(us, status);
  __cil_tmp66 = *status;
  __cil_tmp67 = (int )__cil_tmp66;
  printk("<7>usb-storage: Status = %02X\n", __cil_tmp67);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp68 = (unsigned long )srb;
  __cil_tmp69 = __cil_tmp68 + 80;
  __cil_tmp70 = *((unsigned char **)__cil_tmp69);
  __cil_tmp71 = __cil_tmp70 + 0;
  __cil_tmp72 = *__cil_tmp71;
  __cil_tmp73 = (int )__cil_tmp72;
  if (__cil_tmp73 == 0) {
    transferred = 0;
  } else {
  }
  }
  {
  __cil_tmp74 = (unsigned long )srb;
  __cil_tmp75 = __cil_tmp74 + 76;
  __cil_tmp76 = *((enum dma_data_direction *)__cil_tmp75);
  __cil_tmp77 = (unsigned int )__cil_tmp76;
  if (__cil_tmp77 == 1U) {
    {
    tmp___7 = scsi_sg_count(srb);
    tmp___8 = scsi_sglist(srb);
    __cil_tmp78 = 0 * 1UL;
    __cil_tmp79 = (unsigned long )(registers) + __cil_tmp78;
    __cil_tmp80 = (unsigned char *)__cil_tmp79;
    __cil_tmp81 = 0 * 1UL;
    __cil_tmp82 = (unsigned long )(data) + __cil_tmp81;
    __cil_tmp83 = (unsigned char *)__cil_tmp82;
    __cil_tmp84 = (void *)tmp___8;
    __cil_tmp85 = (unsigned short )len;
    __cil_tmp86 = (int )tmp___7;
    result = usbat_hp8200e_rw_block_test(us, (unsigned char)64, __cil_tmp80, __cil_tmp83,
                                         (unsigned short)19, (unsigned char)16, (unsigned char)23,
                                         (unsigned char)253, (unsigned char)48, 1,
                                         __cil_tmp84, __cil_tmp85, __cil_tmp86, 10);
    }
    if (result == 0) {
      {
      __cil_tmp87 = (unsigned int )transferred;
      __cil_tmp88 = __cil_tmp87 + len;
      transferred = (int )__cil_tmp88;
      printk("<7>usb-storage: Wrote %08X bytes\n", transferred);
      }
    } else {
    }
    return (result);
  } else {
    {
    __cil_tmp89 = (unsigned long )srb;
    __cil_tmp90 = __cil_tmp89 + 80;
    __cil_tmp91 = *((unsigned char **)__cil_tmp90);
    __cil_tmp92 = __cil_tmp91 + 0;
    __cil_tmp93 = *__cil_tmp92;
    __cil_tmp94 = (int )__cil_tmp93;
    if (__cil_tmp94 == 40) {
      {
      __cil_tmp95 = 0 * 1UL;
      __cil_tmp96 = (unsigned long )(registers) + __cil_tmp95;
      __cil_tmp97 = (unsigned char *)__cil_tmp96;
      __cil_tmp98 = 0 * 1UL;
      __cil_tmp99 = (unsigned long )(data) + __cil_tmp98;
      __cil_tmp100 = (unsigned char *)__cil_tmp99;
      tmp___9 = usbat_hp8200e_handle_read10(us, __cil_tmp97, __cil_tmp100, srb);
      }
      return (tmp___9);
    } else {
      {
      __cil_tmp101 = (unsigned long )srb;
      __cil_tmp102 = __cil_tmp101 + 80;
      __cil_tmp103 = *((unsigned char **)__cil_tmp102);
      __cil_tmp104 = __cil_tmp103 + 0;
      __cil_tmp105 = *__cil_tmp104;
      __cil_tmp106 = (int )__cil_tmp105;
      if (__cil_tmp106 == 190) {
        {
        __cil_tmp107 = 0 * 1UL;
        __cil_tmp108 = (unsigned long )(registers) + __cil_tmp107;
        __cil_tmp109 = (unsigned char *)__cil_tmp108;
        __cil_tmp110 = 0 * 1UL;
        __cil_tmp111 = (unsigned long )(data) + __cil_tmp110;
        __cil_tmp112 = (unsigned char *)__cil_tmp111;
        tmp___9 = usbat_hp8200e_handle_read10(us, __cil_tmp109, __cil_tmp112, srb);
        }
        return (tmp___9);
      } else {
      }
      }
    }
    }
  }
  }
  if (len > 65535U) {
    {
    printk("<7>usb-storage: Error: len = %08X... what do I do now?\n", len);
    }
    return (3);
  } else {
  }
  {
  __cil_tmp113 = 0 * 1UL;
  __cil_tmp114 = (unsigned long )(registers) + __cil_tmp113;
  __cil_tmp115 = (unsigned char *)__cil_tmp114;
  __cil_tmp116 = 0 * 1UL;
  __cil_tmp117 = (unsigned long )(data) + __cil_tmp116;
  __cil_tmp118 = (unsigned char *)__cil_tmp117;
  result = usbat_multiple_write(us, __cil_tmp115, __cil_tmp118, (unsigned short)7);
  }
  if (result != 0) {
    return (result);
  } else {
  }
  {
  __cil_tmp119 = (unsigned long )srb;
  __cil_tmp120 = __cil_tmp119 + 80;
  __cil_tmp121 = *((unsigned char **)__cil_tmp120);
  __cil_tmp122 = __cil_tmp121 + 0;
  __cil_tmp123 = *__cil_tmp122;
  __cil_tmp124 = (int )__cil_tmp123;
  if (__cil_tmp124 == 161) {
    tmp___10 = 75;
  } else {
    tmp___10 = 10;
  }
  }
  {
  __cil_tmp125 = (unsigned long )srb;
  __cil_tmp126 = __cil_tmp125 + 80;
  __cil_tmp127 = *((unsigned char **)__cil_tmp126);
  __cil_tmp128 = (void *)__cil_tmp127;
  result = usbat_write_block(us, (unsigned char)64, __cil_tmp128, (unsigned short)12,
                             tmp___10, 0);
  }
  if (result != 0) {
    return (result);
  } else {
  }
  if (len != 0U) {
    {
    __cil_tmp129 = (unsigned long )srb;
    __cil_tmp130 = __cil_tmp129 + 76;
    __cil_tmp131 = *((enum dma_data_direction *)__cil_tmp130);
    __cil_tmp132 = (unsigned int )__cil_tmp131;
    if (__cil_tmp132 == 2U) {
      {
      tmp___11 = usbat_read(us, (unsigned char)64, (unsigned char)20, status);
      }
      if (tmp___11 != 0) {
        return (3);
      } else {
      }
      if (len > 255U) {
        {
        __cil_tmp133 = *status;
        len = (unsigned int )__cil_tmp133;
        tmp___12 = usbat_read(us, (unsigned char)64, (unsigned char)21, status);
        }
        if (tmp___12 != 0) {
          return (3);
        } else {
        }
        __cil_tmp134 = *status;
        __cil_tmp135 = (unsigned int )__cil_tmp134;
        __cil_tmp136 = __cil_tmp135 << 8;
        len = len + __cil_tmp136;
      } else {
        __cil_tmp137 = *status;
        len = (unsigned int )__cil_tmp137;
      }
      {
      tmp___13 = scsi_sg_count(srb);
      tmp___14 = scsi_sglist(srb);
      __cil_tmp138 = (void *)tmp___14;
      __cil_tmp139 = (unsigned short )len;
      __cil_tmp140 = (int )tmp___13;
      result = usbat_read_block(us, __cil_tmp138, __cil_tmp139, __cil_tmp140);
      }
    } else {
    }
    }
  } else {
  }
  return (result);
}
}
static int usbat_flash_transport(struct scsi_cmnd *srb , struct us_data *us ) ;
static unsigned char inquiry_response[36] =
  { (unsigned char)0, (unsigned char)128, (unsigned char)0, (unsigned char)1,
        (unsigned char)31, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static int usbat_flash_transport(struct scsi_cmnd *srb , struct us_data *us )
{ int rc ;
  struct usbat_info *info ;
  unsigned long block ;
  unsigned long blocks ;
  unsigned char *ptr ;
  size_t __len ;
  void *__ret ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  void *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  unsigned char *__cil_tmp25 ;
  unsigned char __cil_tmp26 ;
  int __cil_tmp27 ;
  void *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned char *__cil_tmp31 ;
  void const *__cil_tmp32 ;
  void *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned char *__cil_tmp36 ;
  void const *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned char *__cil_tmp40 ;
  unsigned char *__cil_tmp41 ;
  unsigned char __cil_tmp42 ;
  int __cil_tmp43 ;
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
  __u32 __cil_tmp56 ;
  __be32 *__cil_tmp57 ;
  __be32 *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  __u32 __cil_tmp62 ;
  __be32 *__cil_tmp63 ;
  __be32 *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned char *__cil_tmp67 ;
  unsigned char *__cil_tmp68 ;
  unsigned char __cil_tmp69 ;
  int __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned char *__cil_tmp73 ;
  unsigned char *__cil_tmp74 ;
  unsigned char __cil_tmp75 ;
  int __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned char *__cil_tmp79 ;
  unsigned char *__cil_tmp80 ;
  unsigned char __cil_tmp81 ;
  u32 __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned char *__cil_tmp85 ;
  unsigned char *__cil_tmp86 ;
  unsigned char __cil_tmp87 ;
  u32 __cil_tmp88 ;
  u32 __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned char *__cil_tmp92 ;
  unsigned char *__cil_tmp93 ;
  unsigned char __cil_tmp94 ;
  u32 __cil_tmp95 ;
  u32 __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned char *__cil_tmp99 ;
  unsigned char *__cil_tmp100 ;
  unsigned char __cil_tmp101 ;
  u32 __cil_tmp102 ;
  u32 __cil_tmp103 ;
  unsigned int __cil_tmp104 ;
  unsigned int __cil_tmp105 ;
  unsigned int __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned char *__cil_tmp109 ;
  unsigned char *__cil_tmp110 ;
  unsigned char __cil_tmp111 ;
  u32 __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned char *__cil_tmp115 ;
  unsigned char *__cil_tmp116 ;
  unsigned char __cil_tmp117 ;
  u32 __cil_tmp118 ;
  u32 __cil_tmp119 ;
  unsigned int __cil_tmp120 ;
  u32 __cil_tmp121 ;
  u32 __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned char *__cil_tmp125 ;
  unsigned char *__cil_tmp126 ;
  unsigned char __cil_tmp127 ;
  int __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned char *__cil_tmp131 ;
  unsigned char *__cil_tmp132 ;
  unsigned char __cil_tmp133 ;
  u32 __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned char *__cil_tmp137 ;
  unsigned char *__cil_tmp138 ;
  unsigned char __cil_tmp139 ;
  u32 __cil_tmp140 ;
  u32 __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned char *__cil_tmp144 ;
  unsigned char *__cil_tmp145 ;
  unsigned char __cil_tmp146 ;
  u32 __cil_tmp147 ;
  u32 __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned char *__cil_tmp151 ;
  unsigned char *__cil_tmp152 ;
  unsigned char __cil_tmp153 ;
  u32 __cil_tmp154 ;
  u32 __cil_tmp155 ;
  unsigned int __cil_tmp156 ;
  unsigned int __cil_tmp157 ;
  unsigned int __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned char *__cil_tmp161 ;
  unsigned char *__cil_tmp162 ;
  unsigned char __cil_tmp163 ;
  u32 __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned char *__cil_tmp167 ;
  unsigned char *__cil_tmp168 ;
  unsigned char __cil_tmp169 ;
  u32 __cil_tmp170 ;
  u32 __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  unsigned char *__cil_tmp174 ;
  unsigned char *__cil_tmp175 ;
  unsigned char __cil_tmp176 ;
  u32 __cil_tmp177 ;
  u32 __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  unsigned char *__cil_tmp181 ;
  unsigned char *__cil_tmp182 ;
  unsigned char __cil_tmp183 ;
  u32 __cil_tmp184 ;
  u32 __cil_tmp185 ;
  unsigned int __cil_tmp186 ;
  unsigned int __cil_tmp187 ;
  unsigned int __cil_tmp188 ;
  u32 __cil_tmp189 ;
  u32 __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned char *__cil_tmp193 ;
  unsigned char *__cil_tmp194 ;
  unsigned char __cil_tmp195 ;
  int __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  unsigned long __cil_tmp198 ;
  unsigned char *__cil_tmp199 ;
  unsigned char *__cil_tmp200 ;
  unsigned char __cil_tmp201 ;
  u32 __cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  unsigned char *__cil_tmp205 ;
  unsigned char *__cil_tmp206 ;
  unsigned char __cil_tmp207 ;
  u32 __cil_tmp208 ;
  u32 __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned char *__cil_tmp212 ;
  unsigned char *__cil_tmp213 ;
  unsigned char __cil_tmp214 ;
  u32 __cil_tmp215 ;
  u32 __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  unsigned char *__cil_tmp219 ;
  unsigned char *__cil_tmp220 ;
  unsigned char __cil_tmp221 ;
  u32 __cil_tmp222 ;
  u32 __cil_tmp223 ;
  unsigned int __cil_tmp224 ;
  unsigned int __cil_tmp225 ;
  unsigned int __cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  unsigned char *__cil_tmp229 ;
  unsigned char *__cil_tmp230 ;
  unsigned char __cil_tmp231 ;
  u32 __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  unsigned long __cil_tmp234 ;
  unsigned char *__cil_tmp235 ;
  unsigned char *__cil_tmp236 ;
  unsigned char __cil_tmp237 ;
  u32 __cil_tmp238 ;
  u32 __cil_tmp239 ;
  unsigned int __cil_tmp240 ;
  u32 __cil_tmp241 ;
  u32 __cil_tmp242 ;
  unsigned long __cil_tmp243 ;
  unsigned long __cil_tmp244 ;
  unsigned char *__cil_tmp245 ;
  unsigned char *__cil_tmp246 ;
  unsigned char __cil_tmp247 ;
  int __cil_tmp248 ;
  unsigned long __cil_tmp249 ;
  unsigned long __cil_tmp250 ;
  unsigned char *__cil_tmp251 ;
  unsigned char *__cil_tmp252 ;
  unsigned char __cil_tmp253 ;
  u32 __cil_tmp254 ;
  unsigned long __cil_tmp255 ;
  unsigned long __cil_tmp256 ;
  unsigned char *__cil_tmp257 ;
  unsigned char *__cil_tmp258 ;
  unsigned char __cil_tmp259 ;
  u32 __cil_tmp260 ;
  u32 __cil_tmp261 ;
  unsigned long __cil_tmp262 ;
  unsigned long __cil_tmp263 ;
  unsigned char *__cil_tmp264 ;
  unsigned char *__cil_tmp265 ;
  unsigned char __cil_tmp266 ;
  u32 __cil_tmp267 ;
  u32 __cil_tmp268 ;
  unsigned long __cil_tmp269 ;
  unsigned long __cil_tmp270 ;
  unsigned char *__cil_tmp271 ;
  unsigned char *__cil_tmp272 ;
  unsigned char __cil_tmp273 ;
  u32 __cil_tmp274 ;
  u32 __cil_tmp275 ;
  unsigned int __cil_tmp276 ;
  unsigned int __cil_tmp277 ;
  unsigned int __cil_tmp278 ;
  unsigned long __cil_tmp279 ;
  unsigned long __cil_tmp280 ;
  unsigned char *__cil_tmp281 ;
  unsigned char *__cil_tmp282 ;
  unsigned char __cil_tmp283 ;
  u32 __cil_tmp284 ;
  unsigned long __cil_tmp285 ;
  unsigned long __cil_tmp286 ;
  unsigned char *__cil_tmp287 ;
  unsigned char *__cil_tmp288 ;
  unsigned char __cil_tmp289 ;
  u32 __cil_tmp290 ;
  u32 __cil_tmp291 ;
  unsigned long __cil_tmp292 ;
  unsigned long __cil_tmp293 ;
  unsigned char *__cil_tmp294 ;
  unsigned char *__cil_tmp295 ;
  unsigned char __cil_tmp296 ;
  u32 __cil_tmp297 ;
  u32 __cil_tmp298 ;
  unsigned long __cil_tmp299 ;
  unsigned long __cil_tmp300 ;
  unsigned char *__cil_tmp301 ;
  unsigned char *__cil_tmp302 ;
  unsigned char __cil_tmp303 ;
  u32 __cil_tmp304 ;
  u32 __cil_tmp305 ;
  unsigned int __cil_tmp306 ;
  unsigned int __cil_tmp307 ;
  unsigned int __cil_tmp308 ;
  u32 __cil_tmp309 ;
  u32 __cil_tmp310 ;
  unsigned long __cil_tmp311 ;
  unsigned long __cil_tmp312 ;
  unsigned char *__cil_tmp313 ;
  unsigned char *__cil_tmp314 ;
  unsigned char __cil_tmp315 ;
  int __cil_tmp316 ;
  unsigned long __cil_tmp317 ;
  unsigned long __cil_tmp318 ;
  unsigned char *__cil_tmp319 ;
  unsigned char *__cil_tmp320 ;
  unsigned char __cil_tmp321 ;
  int __cil_tmp322 ;
  void *__cil_tmp323 ;
  size_t __cil_tmp324 ;
  unsigned char *__cil_tmp325 ;
  unsigned char *__cil_tmp326 ;
  unsigned long __cil_tmp327 ;
  unsigned long __cil_tmp328 ;
  unsigned char *__cil_tmp329 ;
  unsigned char *__cil_tmp330 ;
  unsigned long __cil_tmp331 ;
  unsigned long __cil_tmp332 ;
  unsigned long __cil_tmp333 ;
  unsigned char *__cil_tmp334 ;
  unsigned long __cil_tmp335 ;
  unsigned long __cil_tmp336 ;
  unsigned long __cil_tmp337 ;
  unsigned long __cil_tmp338 ;
  unsigned long __cil_tmp339 ;
  unsigned char *__cil_tmp340 ;
  unsigned char *__cil_tmp341 ;
  unsigned char __cil_tmp342 ;
  int __cil_tmp343 ;
  unsigned long __cil_tmp344 ;
  unsigned long __cil_tmp345 ;
  unsigned char *__cil_tmp346 ;
  unsigned char *__cil_tmp347 ;
  unsigned char __cil_tmp348 ;
  int __cil_tmp349 ;
  unsigned long __cil_tmp350 ;
  unsigned long __cil_tmp351 ;
  unsigned char *__cil_tmp352 ;
  unsigned char *__cil_tmp353 ;
  unsigned char __cil_tmp354 ;
  int __cil_tmp355 ;
  unsigned long __cil_tmp356 ;
  unsigned long __cil_tmp357 ;
  unsigned long __cil_tmp358 ;
  unsigned long __cil_tmp359 ;
  unsigned long __cil_tmp360 ;
  unsigned long __cil_tmp361 ;
  {
  __cil_tmp17 = (unsigned long )us;
  __cil_tmp18 = __cil_tmp17 + 648;
  __cil_tmp19 = *((void **)__cil_tmp18);
  info = (struct usbat_info *)__cil_tmp19;
  __cil_tmp20 = (unsigned long )us;
  __cil_tmp21 = __cil_tmp20 + 376;
  ptr = *((unsigned char **)__cil_tmp21);
  {
  __cil_tmp22 = (unsigned long )srb;
  __cil_tmp23 = __cil_tmp22 + 80;
  __cil_tmp24 = *((unsigned char **)__cil_tmp23);
  __cil_tmp25 = __cil_tmp24 + 0;
  __cil_tmp26 = *__cil_tmp25;
  __cil_tmp27 = (int )__cil_tmp26;
  if (__cil_tmp27 == 18) {
    {
    printk("<7>usb-storage: usbat_flash_transport: INQUIRY. Returning bogus response.\n");
    __len = 36UL;
    }
    if (__len >= 64UL) {
      {
      __cil_tmp28 = (void *)ptr;
      __cil_tmp29 = 0 * 1UL;
      __cil_tmp30 = (unsigned long )(inquiry_response) + __cil_tmp29;
      __cil_tmp31 = (unsigned char *)__cil_tmp30;
      __cil_tmp32 = (void const *)__cil_tmp31;
      __ret = memcpy(__cil_tmp28, __cil_tmp32, __len);
      }
    } else {
      {
      __cil_tmp33 = (void *)ptr;
      __cil_tmp34 = 0 * 1UL;
      __cil_tmp35 = (unsigned long )(inquiry_response) + __cil_tmp34;
      __cil_tmp36 = (unsigned char *)__cil_tmp35;
      __cil_tmp37 = (void const *)__cil_tmp36;
      __ret = __builtin_memcpy(__cil_tmp33, __cil_tmp37, __len);
      }
    }
    {
    fill_inquiry_response(us, ptr, 36U);
    }
    return (0);
  } else {
  }
  }
  {
  __cil_tmp38 = (unsigned long )srb;
  __cil_tmp39 = __cil_tmp38 + 80;
  __cil_tmp40 = *((unsigned char **)__cil_tmp39);
  __cil_tmp41 = __cil_tmp40 + 0;
  __cil_tmp42 = *__cil_tmp41;
  __cil_tmp43 = (int )__cil_tmp42;
  if (__cil_tmp43 == 37) {
    {
    rc = usbat_flash_check_media(us, info);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    rc = usbat_flash_get_sector_count(us, info);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    __cil_tmp44 = (unsigned long )info;
    __cil_tmp45 = __cil_tmp44 + 16;
    *((unsigned long *)__cil_tmp45) = 512UL;
    __cil_tmp46 = (unsigned long )info;
    __cil_tmp47 = __cil_tmp46 + 8;
    __cil_tmp48 = *((unsigned long *)__cil_tmp47);
    __cil_tmp49 = (unsigned long )info;
    __cil_tmp50 = __cil_tmp49 + 16;
    __cil_tmp51 = *((unsigned long *)__cil_tmp50);
    printk("<7>usb-storage: usbat_flash_transport: READ_CAPACITY: %ld sectors, %ld bytes per sector\n",
           __cil_tmp48, __cil_tmp51);
    __cil_tmp52 = (unsigned long )info;
    __cil_tmp53 = __cil_tmp52 + 8;
    __cil_tmp54 = *((unsigned long *)__cil_tmp53);
    __cil_tmp55 = __cil_tmp54 - 1UL;
    __cil_tmp56 = (__u32 )__cil_tmp55;
    tmp___7 = __fswab32(__cil_tmp56);
    __cil_tmp57 = (__be32 *)ptr;
    __cil_tmp58 = __cil_tmp57 + 0;
    *__cil_tmp58 = tmp___7;
    __cil_tmp59 = (unsigned long )info;
    __cil_tmp60 = __cil_tmp59 + 16;
    __cil_tmp61 = *((unsigned long *)__cil_tmp60);
    __cil_tmp62 = (__u32 )__cil_tmp61;
    tmp___8 = __fswab32(__cil_tmp62);
    __cil_tmp63 = (__be32 *)ptr;
    __cil_tmp64 = __cil_tmp63 + 1;
    *__cil_tmp64 = tmp___8;
    usb_stor_set_xfer_buf(ptr, 8U, srb);
    }
    return (0);
  } else {
  }
  }
  {
  __cil_tmp65 = (unsigned long )srb;
  __cil_tmp66 = __cil_tmp65 + 80;
  __cil_tmp67 = *((unsigned char **)__cil_tmp66);
  __cil_tmp68 = __cil_tmp67 + 0;
  __cil_tmp69 = *__cil_tmp68;
  __cil_tmp70 = (int )__cil_tmp69;
  if (__cil_tmp70 == 85) {
    {
    printk("<7>usb-storage: usbat_flash_transport:  Gah! MODE_SELECT_10.\n");
    }
    return (3);
  } else {
  }
  }
  {
  __cil_tmp71 = (unsigned long )srb;
  __cil_tmp72 = __cil_tmp71 + 80;
  __cil_tmp73 = *((unsigned char **)__cil_tmp72);
  __cil_tmp74 = __cil_tmp73 + 0;
  __cil_tmp75 = *__cil_tmp74;
  __cil_tmp76 = (int )__cil_tmp75;
  if (__cil_tmp76 == 40) {
    {
    __cil_tmp77 = (unsigned long )srb;
    __cil_tmp78 = __cil_tmp77 + 80;
    __cil_tmp79 = *((unsigned char **)__cil_tmp78);
    __cil_tmp80 = __cil_tmp79 + 5;
    __cil_tmp81 = *__cil_tmp80;
    __cil_tmp82 = (u32 )__cil_tmp81;
    __cil_tmp83 = (unsigned long )srb;
    __cil_tmp84 = __cil_tmp83 + 80;
    __cil_tmp85 = *((unsigned char **)__cil_tmp84);
    __cil_tmp86 = __cil_tmp85 + 4;
    __cil_tmp87 = *__cil_tmp86;
    __cil_tmp88 = (u32 )__cil_tmp87;
    __cil_tmp89 = __cil_tmp88 << 8;
    __cil_tmp90 = (unsigned long )srb;
    __cil_tmp91 = __cil_tmp90 + 80;
    __cil_tmp92 = *((unsigned char **)__cil_tmp91);
    __cil_tmp93 = __cil_tmp92 + 3;
    __cil_tmp94 = *__cil_tmp93;
    __cil_tmp95 = (u32 )__cil_tmp94;
    __cil_tmp96 = __cil_tmp95 << 16;
    __cil_tmp97 = (unsigned long )srb;
    __cil_tmp98 = __cil_tmp97 + 80;
    __cil_tmp99 = *((unsigned char **)__cil_tmp98);
    __cil_tmp100 = __cil_tmp99 + 2;
    __cil_tmp101 = *__cil_tmp100;
    __cil_tmp102 = (u32 )__cil_tmp101;
    __cil_tmp103 = __cil_tmp102 << 24;
    __cil_tmp104 = __cil_tmp103 | __cil_tmp96;
    __cil_tmp105 = __cil_tmp104 | __cil_tmp89;
    __cil_tmp106 = __cil_tmp105 | __cil_tmp82;
    block = (unsigned long )__cil_tmp106;
    __cil_tmp107 = (unsigned long )srb;
    __cil_tmp108 = __cil_tmp107 + 80;
    __cil_tmp109 = *((unsigned char **)__cil_tmp108);
    __cil_tmp110 = __cil_tmp109 + 8;
    __cil_tmp111 = *__cil_tmp110;
    __cil_tmp112 = (u32 )__cil_tmp111;
    __cil_tmp113 = (unsigned long )srb;
    __cil_tmp114 = __cil_tmp113 + 80;
    __cil_tmp115 = *((unsigned char **)__cil_tmp114);
    __cil_tmp116 = __cil_tmp115 + 7;
    __cil_tmp117 = *__cil_tmp116;
    __cil_tmp118 = (u32 )__cil_tmp117;
    __cil_tmp119 = __cil_tmp118 << 8;
    __cil_tmp120 = __cil_tmp119 | __cil_tmp112;
    blocks = (unsigned long )__cil_tmp120;
    printk("<7>usb-storage: usbat_flash_transport:  READ_10: read block 0x%04lx  count %ld\n",
           block, blocks);
    __cil_tmp121 = (u32 )block;
    __cil_tmp122 = (u32 )blocks;
    tmp___9 = usbat_flash_read_data(us, info, __cil_tmp121, __cil_tmp122);
    }
    return (tmp___9);
  } else {
  }
  }
  {
  __cil_tmp123 = (unsigned long )srb;
  __cil_tmp124 = __cil_tmp123 + 80;
  __cil_tmp125 = *((unsigned char **)__cil_tmp124);
  __cil_tmp126 = __cil_tmp125 + 0;
  __cil_tmp127 = *__cil_tmp126;
  __cil_tmp128 = (int )__cil_tmp127;
  if (__cil_tmp128 == 168) {
    {
    __cil_tmp129 = (unsigned long )srb;
    __cil_tmp130 = __cil_tmp129 + 80;
    __cil_tmp131 = *((unsigned char **)__cil_tmp130);
    __cil_tmp132 = __cil_tmp131 + 5;
    __cil_tmp133 = *__cil_tmp132;
    __cil_tmp134 = (u32 )__cil_tmp133;
    __cil_tmp135 = (unsigned long )srb;
    __cil_tmp136 = __cil_tmp135 + 80;
    __cil_tmp137 = *((unsigned char **)__cil_tmp136);
    __cil_tmp138 = __cil_tmp137 + 4;
    __cil_tmp139 = *__cil_tmp138;
    __cil_tmp140 = (u32 )__cil_tmp139;
    __cil_tmp141 = __cil_tmp140 << 8;
    __cil_tmp142 = (unsigned long )srb;
    __cil_tmp143 = __cil_tmp142 + 80;
    __cil_tmp144 = *((unsigned char **)__cil_tmp143);
    __cil_tmp145 = __cil_tmp144 + 3;
    __cil_tmp146 = *__cil_tmp145;
    __cil_tmp147 = (u32 )__cil_tmp146;
    __cil_tmp148 = __cil_tmp147 << 16;
    __cil_tmp149 = (unsigned long )srb;
    __cil_tmp150 = __cil_tmp149 + 80;
    __cil_tmp151 = *((unsigned char **)__cil_tmp150);
    __cil_tmp152 = __cil_tmp151 + 2;
    __cil_tmp153 = *__cil_tmp152;
    __cil_tmp154 = (u32 )__cil_tmp153;
    __cil_tmp155 = __cil_tmp154 << 24;
    __cil_tmp156 = __cil_tmp155 | __cil_tmp148;
    __cil_tmp157 = __cil_tmp156 | __cil_tmp141;
    __cil_tmp158 = __cil_tmp157 | __cil_tmp134;
    block = (unsigned long )__cil_tmp158;
    __cil_tmp159 = (unsigned long )srb;
    __cil_tmp160 = __cil_tmp159 + 80;
    __cil_tmp161 = *((unsigned char **)__cil_tmp160);
    __cil_tmp162 = __cil_tmp161 + 9;
    __cil_tmp163 = *__cil_tmp162;
    __cil_tmp164 = (u32 )__cil_tmp163;
    __cil_tmp165 = (unsigned long )srb;
    __cil_tmp166 = __cil_tmp165 + 80;
    __cil_tmp167 = *((unsigned char **)__cil_tmp166);
    __cil_tmp168 = __cil_tmp167 + 8;
    __cil_tmp169 = *__cil_tmp168;
    __cil_tmp170 = (u32 )__cil_tmp169;
    __cil_tmp171 = __cil_tmp170 << 8;
    __cil_tmp172 = (unsigned long )srb;
    __cil_tmp173 = __cil_tmp172 + 80;
    __cil_tmp174 = *((unsigned char **)__cil_tmp173);
    __cil_tmp175 = __cil_tmp174 + 7;
    __cil_tmp176 = *__cil_tmp175;
    __cil_tmp177 = (u32 )__cil_tmp176;
    __cil_tmp178 = __cil_tmp177 << 16;
    __cil_tmp179 = (unsigned long )srb;
    __cil_tmp180 = __cil_tmp179 + 80;
    __cil_tmp181 = *((unsigned char **)__cil_tmp180);
    __cil_tmp182 = __cil_tmp181 + 6;
    __cil_tmp183 = *__cil_tmp182;
    __cil_tmp184 = (u32 )__cil_tmp183;
    __cil_tmp185 = __cil_tmp184 << 24;
    __cil_tmp186 = __cil_tmp185 | __cil_tmp178;
    __cil_tmp187 = __cil_tmp186 | __cil_tmp171;
    __cil_tmp188 = __cil_tmp187 | __cil_tmp164;
    blocks = (unsigned long )__cil_tmp188;
    printk("<7>usb-storage: usbat_flash_transport: READ_12: read block 0x%04lx  count %ld\n",
           block, blocks);
    __cil_tmp189 = (u32 )block;
    __cil_tmp190 = (u32 )blocks;
    tmp___10 = usbat_flash_read_data(us, info, __cil_tmp189, __cil_tmp190);
    }
    return (tmp___10);
  } else {
  }
  }
  {
  __cil_tmp191 = (unsigned long )srb;
  __cil_tmp192 = __cil_tmp191 + 80;
  __cil_tmp193 = *((unsigned char **)__cil_tmp192);
  __cil_tmp194 = __cil_tmp193 + 0;
  __cil_tmp195 = *__cil_tmp194;
  __cil_tmp196 = (int )__cil_tmp195;
  if (__cil_tmp196 == 42) {
    {
    __cil_tmp197 = (unsigned long )srb;
    __cil_tmp198 = __cil_tmp197 + 80;
    __cil_tmp199 = *((unsigned char **)__cil_tmp198);
    __cil_tmp200 = __cil_tmp199 + 5;
    __cil_tmp201 = *__cil_tmp200;
    __cil_tmp202 = (u32 )__cil_tmp201;
    __cil_tmp203 = (unsigned long )srb;
    __cil_tmp204 = __cil_tmp203 + 80;
    __cil_tmp205 = *((unsigned char **)__cil_tmp204);
    __cil_tmp206 = __cil_tmp205 + 4;
    __cil_tmp207 = *__cil_tmp206;
    __cil_tmp208 = (u32 )__cil_tmp207;
    __cil_tmp209 = __cil_tmp208 << 8;
    __cil_tmp210 = (unsigned long )srb;
    __cil_tmp211 = __cil_tmp210 + 80;
    __cil_tmp212 = *((unsigned char **)__cil_tmp211);
    __cil_tmp213 = __cil_tmp212 + 3;
    __cil_tmp214 = *__cil_tmp213;
    __cil_tmp215 = (u32 )__cil_tmp214;
    __cil_tmp216 = __cil_tmp215 << 16;
    __cil_tmp217 = (unsigned long )srb;
    __cil_tmp218 = __cil_tmp217 + 80;
    __cil_tmp219 = *((unsigned char **)__cil_tmp218);
    __cil_tmp220 = __cil_tmp219 + 2;
    __cil_tmp221 = *__cil_tmp220;
    __cil_tmp222 = (u32 )__cil_tmp221;
    __cil_tmp223 = __cil_tmp222 << 24;
    __cil_tmp224 = __cil_tmp223 | __cil_tmp216;
    __cil_tmp225 = __cil_tmp224 | __cil_tmp209;
    __cil_tmp226 = __cil_tmp225 | __cil_tmp202;
    block = (unsigned long )__cil_tmp226;
    __cil_tmp227 = (unsigned long )srb;
    __cil_tmp228 = __cil_tmp227 + 80;
    __cil_tmp229 = *((unsigned char **)__cil_tmp228);
    __cil_tmp230 = __cil_tmp229 + 8;
    __cil_tmp231 = *__cil_tmp230;
    __cil_tmp232 = (u32 )__cil_tmp231;
    __cil_tmp233 = (unsigned long )srb;
    __cil_tmp234 = __cil_tmp233 + 80;
    __cil_tmp235 = *((unsigned char **)__cil_tmp234);
    __cil_tmp236 = __cil_tmp235 + 7;
    __cil_tmp237 = *__cil_tmp236;
    __cil_tmp238 = (u32 )__cil_tmp237;
    __cil_tmp239 = __cil_tmp238 << 8;
    __cil_tmp240 = __cil_tmp239 | __cil_tmp232;
    blocks = (unsigned long )__cil_tmp240;
    printk("<7>usb-storage: usbat_flash_transport: WRITE_10: write block 0x%04lx  count %ld\n",
           block, blocks);
    __cil_tmp241 = (u32 )block;
    __cil_tmp242 = (u32 )blocks;
    tmp___11 = usbat_flash_write_data(us, info, __cil_tmp241, __cil_tmp242);
    }
    return (tmp___11);
  } else {
  }
  }
  {
  __cil_tmp243 = (unsigned long )srb;
  __cil_tmp244 = __cil_tmp243 + 80;
  __cil_tmp245 = *((unsigned char **)__cil_tmp244);
  __cil_tmp246 = __cil_tmp245 + 0;
  __cil_tmp247 = *__cil_tmp246;
  __cil_tmp248 = (int )__cil_tmp247;
  if (__cil_tmp248 == 170) {
    {
    __cil_tmp249 = (unsigned long )srb;
    __cil_tmp250 = __cil_tmp249 + 80;
    __cil_tmp251 = *((unsigned char **)__cil_tmp250);
    __cil_tmp252 = __cil_tmp251 + 5;
    __cil_tmp253 = *__cil_tmp252;
    __cil_tmp254 = (u32 )__cil_tmp253;
    __cil_tmp255 = (unsigned long )srb;
    __cil_tmp256 = __cil_tmp255 + 80;
    __cil_tmp257 = *((unsigned char **)__cil_tmp256);
    __cil_tmp258 = __cil_tmp257 + 4;
    __cil_tmp259 = *__cil_tmp258;
    __cil_tmp260 = (u32 )__cil_tmp259;
    __cil_tmp261 = __cil_tmp260 << 8;
    __cil_tmp262 = (unsigned long )srb;
    __cil_tmp263 = __cil_tmp262 + 80;
    __cil_tmp264 = *((unsigned char **)__cil_tmp263);
    __cil_tmp265 = __cil_tmp264 + 3;
    __cil_tmp266 = *__cil_tmp265;
    __cil_tmp267 = (u32 )__cil_tmp266;
    __cil_tmp268 = __cil_tmp267 << 16;
    __cil_tmp269 = (unsigned long )srb;
    __cil_tmp270 = __cil_tmp269 + 80;
    __cil_tmp271 = *((unsigned char **)__cil_tmp270);
    __cil_tmp272 = __cil_tmp271 + 2;
    __cil_tmp273 = *__cil_tmp272;
    __cil_tmp274 = (u32 )__cil_tmp273;
    __cil_tmp275 = __cil_tmp274 << 24;
    __cil_tmp276 = __cil_tmp275 | __cil_tmp268;
    __cil_tmp277 = __cil_tmp276 | __cil_tmp261;
    __cil_tmp278 = __cil_tmp277 | __cil_tmp254;
    block = (unsigned long )__cil_tmp278;
    __cil_tmp279 = (unsigned long )srb;
    __cil_tmp280 = __cil_tmp279 + 80;
    __cil_tmp281 = *((unsigned char **)__cil_tmp280);
    __cil_tmp282 = __cil_tmp281 + 9;
    __cil_tmp283 = *__cil_tmp282;
    __cil_tmp284 = (u32 )__cil_tmp283;
    __cil_tmp285 = (unsigned long )srb;
    __cil_tmp286 = __cil_tmp285 + 80;
    __cil_tmp287 = *((unsigned char **)__cil_tmp286);
    __cil_tmp288 = __cil_tmp287 + 8;
    __cil_tmp289 = *__cil_tmp288;
    __cil_tmp290 = (u32 )__cil_tmp289;
    __cil_tmp291 = __cil_tmp290 << 8;
    __cil_tmp292 = (unsigned long )srb;
    __cil_tmp293 = __cil_tmp292 + 80;
    __cil_tmp294 = *((unsigned char **)__cil_tmp293);
    __cil_tmp295 = __cil_tmp294 + 7;
    __cil_tmp296 = *__cil_tmp295;
    __cil_tmp297 = (u32 )__cil_tmp296;
    __cil_tmp298 = __cil_tmp297 << 16;
    __cil_tmp299 = (unsigned long )srb;
    __cil_tmp300 = __cil_tmp299 + 80;
    __cil_tmp301 = *((unsigned char **)__cil_tmp300);
    __cil_tmp302 = __cil_tmp301 + 6;
    __cil_tmp303 = *__cil_tmp302;
    __cil_tmp304 = (u32 )__cil_tmp303;
    __cil_tmp305 = __cil_tmp304 << 24;
    __cil_tmp306 = __cil_tmp305 | __cil_tmp298;
    __cil_tmp307 = __cil_tmp306 | __cil_tmp291;
    __cil_tmp308 = __cil_tmp307 | __cil_tmp284;
    blocks = (unsigned long )__cil_tmp308;
    printk("<7>usb-storage: usbat_flash_transport: WRITE_12: write block 0x%04lx  count %ld\n",
           block, blocks);
    __cil_tmp309 = (u32 )block;
    __cil_tmp310 = (u32 )blocks;
    tmp___12 = usbat_flash_write_data(us, info, __cil_tmp309, __cil_tmp310);
    }
    return (tmp___12);
  } else {
  }
  }
  {
  __cil_tmp311 = (unsigned long )srb;
  __cil_tmp312 = __cil_tmp311 + 80;
  __cil_tmp313 = *((unsigned char **)__cil_tmp312);
  __cil_tmp314 = __cil_tmp313 + 0;
  __cil_tmp315 = *__cil_tmp314;
  __cil_tmp316 = (int )__cil_tmp315;
  if (__cil_tmp316 == 0) {
    {
    printk("<7>usb-storage: usbat_flash_transport: TEST_UNIT_READY.\n");
    rc = usbat_flash_check_media(us, info);
    }
    if (rc != 0) {
      return (rc);
    } else {
    }
    {
    tmp___13 = usbat_check_status(us);
    }
    return (tmp___13);
  } else {
  }
  }
  {
  __cil_tmp317 = (unsigned long )srb;
  __cil_tmp318 = __cil_tmp317 + 80;
  __cil_tmp319 = *((unsigned char **)__cil_tmp318);
  __cil_tmp320 = __cil_tmp319 + 0;
  __cil_tmp321 = *__cil_tmp320;
  __cil_tmp322 = (int )__cil_tmp321;
  if (__cil_tmp322 == 3) {
    {
    printk("<7>usb-storage: usbat_flash_transport: REQUEST_SENSE.\n");
    __cil_tmp323 = (void *)ptr;
    __cil_tmp324 = (size_t )18;
    memset(__cil_tmp323, 0, __cil_tmp324);
    __cil_tmp325 = ptr + 0;
    *__cil_tmp325 = (unsigned char)240;
    __cil_tmp326 = ptr + 2;
    __cil_tmp327 = (unsigned long )info;
    __cil_tmp328 = __cil_tmp327 + 24;
    *__cil_tmp326 = *((unsigned char *)__cil_tmp328);
    __cil_tmp329 = ptr + 7;
    *__cil_tmp329 = (unsigned char)11;
    __cil_tmp330 = ptr + 12;
    __cil_tmp331 = (unsigned long )info;
    __cil_tmp332 = __cil_tmp331 + 32;
    __cil_tmp333 = *((unsigned long *)__cil_tmp332);
    *__cil_tmp330 = (unsigned char )__cil_tmp333;
    __cil_tmp334 = ptr + 13;
    __cil_tmp335 = (unsigned long )info;
    __cil_tmp336 = __cil_tmp335 + 40;
    __cil_tmp337 = *((unsigned long *)__cil_tmp336);
    *__cil_tmp334 = (unsigned char )__cil_tmp337;
    usb_stor_set_xfer_buf(ptr, 18U, srb);
    }
    return (0);
  } else {
  }
  }
  {
  __cil_tmp338 = (unsigned long )srb;
  __cil_tmp339 = __cil_tmp338 + 80;
  __cil_tmp340 = *((unsigned char **)__cil_tmp339);
  __cil_tmp341 = __cil_tmp340 + 0;
  __cil_tmp342 = *__cil_tmp341;
  __cil_tmp343 = (int )__cil_tmp342;
  if (__cil_tmp343 == 30) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp344 = (unsigned long )srb;
  __cil_tmp345 = __cil_tmp344 + 80;
  __cil_tmp346 = *((unsigned char **)__cil_tmp345);
  __cil_tmp347 = __cil_tmp346 + 0;
  __cil_tmp348 = *__cil_tmp347;
  __cil_tmp349 = (int )__cil_tmp348;
  __cil_tmp350 = (unsigned long )srb;
  __cil_tmp351 = __cil_tmp350 + 80;
  __cil_tmp352 = *((unsigned char **)__cil_tmp351);
  __cil_tmp353 = __cil_tmp352 + 0;
  __cil_tmp354 = *__cil_tmp353;
  __cil_tmp355 = (int )__cil_tmp354;
  printk("<7>usb-storage: usbat_flash_transport: Gah! Unknown command: %d (0x%x)\n",
         __cil_tmp349, __cil_tmp355);
  __cil_tmp356 = (unsigned long )info;
  __cil_tmp357 = __cil_tmp356 + 24;
  *((unsigned char *)__cil_tmp357) = (unsigned char)5;
  __cil_tmp358 = (unsigned long )info;
  __cil_tmp359 = __cil_tmp358 + 32;
  *((unsigned long *)__cil_tmp359) = 32UL;
  __cil_tmp360 = (unsigned long )info;
  __cil_tmp361 = __cil_tmp360 + 40;
  *((unsigned long *)__cil_tmp361) = 0UL;
  }
  return (1);
}
}
static int init_usbat_cd(struct us_data *us )
{ int tmp___7 ;
  {
  {
  tmp___7 = init_usbat(us, 1);
  }
  return (tmp___7);
}
}
static int init_usbat_flash(struct us_data *us )
{ int tmp___7 ;
  {
  {
  tmp___7 = init_usbat(us, 2);
  }
  return (tmp___7);
}
}
static int usbat_probe(struct usb_interface *intf , struct usb_device_id const *id )
{ struct us_data *us ;
  int result ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct usb_device_id *__cil_tmp7 ;
  struct usb_device_id const *__cil_tmp8 ;
  int __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct us_unusual_dev *__cil_tmp12 ;
  struct us_unusual_dev *__cil_tmp13 ;
  struct us_data **__cil_tmp14 ;
  struct us_data *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct us_data **__cil_tmp18 ;
  struct us_data *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct us_data **__cil_tmp22 ;
  struct us_data *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct us_data **__cil_tmp26 ;
  struct us_data *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct us_data **__cil_tmp30 ;
  struct us_data *__cil_tmp31 ;
  {
  {
  __cil_tmp5 = 0 * 24UL;
  __cil_tmp6 = (unsigned long )(usbat_usb_ids) + __cil_tmp5;
  __cil_tmp7 = (struct usb_device_id *)__cil_tmp6;
  __cil_tmp8 = (struct usb_device_id const *)__cil_tmp7;
  __cil_tmp9 = id - __cil_tmp8;
  __cil_tmp10 = 0 * 32UL;
  __cil_tmp11 = (unsigned long )(usbat_unusual_dev_list) + __cil_tmp10;
  __cil_tmp12 = (struct us_unusual_dev *)__cil_tmp11;
  __cil_tmp13 = __cil_tmp12 + __cil_tmp9;
  result = usb_stor_probe1(& us, intf, id, __cil_tmp13);
  }
  if (result) {
    return (result);
  } else {
  }
  {
  __cil_tmp14 = & us;
  __cil_tmp15 = *__cil_tmp14;
  __cil_tmp16 = (unsigned long )__cil_tmp15;
  __cil_tmp17 = __cil_tmp16 + 136;
  *((char **)__cil_tmp17) = (char *)"Shuttle USBAT";
  __cil_tmp18 = & us;
  __cil_tmp19 = *__cil_tmp18;
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = __cil_tmp20 + 168;
  *((int (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp21) = & usbat_flash_transport;
  __cil_tmp22 = & us;
  __cil_tmp23 = *__cil_tmp22;
  __cil_tmp24 = (unsigned long )__cil_tmp23;
  __cil_tmp25 = __cil_tmp24 + 176;
  *((int (**)(struct us_data * ))__cil_tmp25) = & usb_stor_CB_reset;
  __cil_tmp26 = & us;
  __cil_tmp27 = *__cil_tmp26;
  __cil_tmp28 = (unsigned long )__cil_tmp27;
  __cil_tmp29 = __cil_tmp28 + 158;
  *((u8 *)__cil_tmp29) = (u8 )1;
  __cil_tmp30 = & us;
  __cil_tmp31 = *__cil_tmp30;
  result = usb_stor_probe2(__cil_tmp31);
  }
  return (result);
}
}
static struct usb_driver usbat_driver =
     {"ums-usbat", & usbat_probe, & usb_stor_disconnect, (int (*)(struct usb_interface *intf ,
                                                                unsigned int code ,
                                                                void *buf ))0, & usb_stor_suspend,
    & usb_stor_resume, & usb_stor_reset_resume, & usb_stor_pre_reset, & usb_stor_post_reset,
    (struct usb_device_id const *)(usbat_usb_ids), {{{{{{0U}}, 0U, 0U, (void *)0}}},
                                                      {(struct list_head *)0, (struct list_head *)0}},
    {{(char const *)0, (struct bus_type *)0, (struct module *)0, (char const *)0,
      (_Bool)0, (struct of_device_id const *)0, (int (*)(struct device *dev ))0,
      (int (*)(struct device *dev ))0, (void (*)(struct device *dev ))0, (int (*)(struct device *dev ,
                                                                                  pm_message_t state ))0,
      (int (*)(struct device *dev ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
      (struct driver_private *)0}, 0}, 1U, 0U, 1U};
static int usbat_driver_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int usbat_driver_init(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = usb_register_driver(& usbat_driver, & __this_module, "ums_usbat");
  }
  return (tmp___7);
}
}
int init_module(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = usbat_driver_init();
  }
  return (tmp___7);
}
}
static void usbat_driver_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void usbat_driver_exit(void)
{
  {
  {
  usb_deregister(& usbat_driver);
  }
  return;
}
}
void cleanup_module(void)
{
  {
  {
  usbat_driver_exit();
  }
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static int res_usbat_probe_36 ;
void main(void)
{ struct usb_interface *var_group1 ;
  struct usb_device_id const *var_usbat_probe_36_p1 ;
  int ldv_s_usbat_driver_usb_driver ;
  int tmp___7 ;
  int tmp___8 ;
  int __cil_tmp6 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_s_usbat_driver_usb_driver = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    if (tmp___8) {
    } else {
      {
      __cil_tmp6 = ldv_s_usbat_driver_usb_driver == 0;
      if (! __cil_tmp6) {
      } else {
        goto while_break;
      }
      }
    }
    {
    tmp___7 = __VERIFIER_nondet_int();
    }
    if (tmp___7 == 0) {
      goto case_0;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_usbat_driver_usb_driver == 0) {
          {
          res_usbat_probe_36 = usbat_probe(var_group1, var_usbat_probe_36_p1);
          ldv_check_return_value(res_usbat_probe_36);
          }
          if (res_usbat_probe_36) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_usbat_driver_usb_driver = 0;
        } else {
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
  ldv_module_exit:
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
void fill_inquiry_response(struct us_data *arg0, unsigned char *arg1, unsigned int arg2) {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int usb_stor_access_xfer_buf(unsigned char *arg0, unsigned int arg1, struct scsi_cmnd *arg2, struct scatterlist **arg3, unsigned int *arg4, enum xfer_buf_dir arg5) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int usb_stor_bulk_transfer_sg(struct us_data *arg0, unsigned int arg1, void *arg2, unsigned int arg3, int arg4, int *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_stor_clear_halt(struct us_data *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_stor_ctrl_transfer(struct us_data *arg0, unsigned int arg1, u8 arg2, u8 arg3, u16 arg4, u16 arg5, void *arg6, u16 arg7) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_stor_probe1(struct us_data **arg0, struct usb_interface *arg1, const struct usb_device_id *arg2, struct us_unusual_dev *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_stor_probe2(struct us_data *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_stor_set_xfer_buf(unsigned char *arg0, unsigned int arg1, struct scsi_cmnd *arg2) {
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
