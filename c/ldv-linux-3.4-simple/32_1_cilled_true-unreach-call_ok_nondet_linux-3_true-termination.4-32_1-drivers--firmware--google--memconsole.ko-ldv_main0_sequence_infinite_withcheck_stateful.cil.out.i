extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef u64 phys_addr_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct task_struct;
struct task_struct;
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
struct task_struct;
struct file;
struct file;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
struct kobject;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct file;
struct vm_area_struct;
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
struct task_struct;
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
struct kref {
   atomic_t refcount ;
};
struct task_struct;
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
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct vm_area_struct;
struct vm_area_struct;
struct file;
struct task_struct;
struct file;
struct dmi_strmatch {
   unsigned char slot ;
   char substr[79] ;
};
struct dmi_system_id {
   int (*callback)(struct dmi_system_id const * ) ;
   char const *ident ;
   struct dmi_strmatch matches[4] ;
   void *driver_data ;
};
struct __anonstruct_v1_203 {
   u8 enabled ;
   u32 buffer_addr ;
   u16 start ;
   u16 end ;
   u16 num_chars ;
   u8 wrapped ;
} __attribute__((__packed__)) ;
struct __anonstruct_v2_204 {
   u32 buffer_addr ;
   u16 num_bytes ;
   u16 start ;
   u16 end ;
} __attribute__((__packed__)) ;
union __anonunion____missing_field_name_202 {
   struct __anonstruct_v1_203 v1 ;
   struct __anonstruct_v2_204 v2 ;
};
struct biosmemcon_ebda {
   u32 signature ;
   union __anonunion____missing_field_name_202 __annonCompField33 ;
} __attribute__((__packed__)) ;
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern ssize_t memory_read_from_buffer(void *to , size_t count , loff_t *ppos , void const *from ,
                                       size_t available ) ;
extern int __attribute__((__warn_unused_result__)) sysfs_create_bin_file(struct kobject *kobj ,
                                                                          struct bin_attribute const *attr ) ;
extern void sysfs_remove_bin_file(struct kobject *kobj , struct bin_attribute const *attr ) ;
extern struct kobject *firmware_kobj ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
__inline static void *phys_to_virt(phys_addr_t address ) __attribute__((__no_instrument_function__)) ;
__inline static void *phys_to_virt(phys_addr_t address )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  {
  {
  __cil_tmp2 = (unsigned long )address;
  __cil_tmp3 = __cil_tmp2 + 0xffff880000000000UL;
  return ((void *)__cil_tmp3);
  }
}
}
int init_module(void) ;
void cleanup_module(void) ;
extern int dmi_check_system(struct dmi_system_id const *list ) ;
__inline static unsigned int get_bios_ebda(void) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int get_bios_ebda(void)
{ unsigned int address ;
  void *tmp ;
  phys_addr_t __cil_tmp3 ;
  unsigned short *__cil_tmp4 ;
  unsigned short __cil_tmp5 ;
  {
  {
  __cil_tmp3 = (phys_addr_t )1038;
  tmp = phys_to_virt(__cil_tmp3);
  __cil_tmp4 = (unsigned short *)tmp;
  __cil_tmp5 = *__cil_tmp4;
  address = (unsigned int )__cil_tmp5;
  address = address << 4;
  }
  return (address);
}
}
static char *memconsole_baseaddr ;
static size_t memconsole_length ;
static ssize_t memconsole_read(struct file *filp , struct kobject *kobp , struct bin_attribute *bin_attr ,
                               char *buf , loff_t pos , size_t count )
{ ssize_t tmp ;
  void *__cil_tmp8 ;
  void const *__cil_tmp9 ;
  {
  {
  __cil_tmp8 = (void *)buf;
  __cil_tmp9 = (void const *)memconsole_baseaddr;
  tmp = memory_read_from_buffer(__cil_tmp8, count, & pos, __cil_tmp9, memconsole_length);
  }
  return (tmp);
}
}
static struct bin_attribute memconsole_bin_attr = {{"log", (umode_t )292}, 0UL, (void *)0, & memconsole_read, (ssize_t (*)(struct file * ,
                                                                            struct kobject * ,
                                                                            struct bin_attribute * ,
                                                                            char * ,
                                                                            loff_t ,
                                                                            size_t ))0,
    (int (*)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ))0};
static void found_v1_header(struct biosmemcon_ebda *hdr )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  u32 __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  u16 __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u16 __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  u16 __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  u16 __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u32 __cil_tmp35 ;
  phys_addr_t __cil_tmp36 ;
  {
  {
  printk("<6>BIOS console v1 EBDA structure found at %p\n", hdr);
  __cil_tmp3 = 0 + 1;
  __cil_tmp4 = 4 + __cil_tmp3;
  __cil_tmp5 = (unsigned long )hdr;
  __cil_tmp6 = __cil_tmp5 + __cil_tmp4;
  __cil_tmp7 = *((u32 *)__cil_tmp6);
  __cil_tmp8 = 0 + 5;
  __cil_tmp9 = 4 + __cil_tmp8;
  __cil_tmp10 = (unsigned long )hdr;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
  __cil_tmp12 = *((u16 *)__cil_tmp11);
  __cil_tmp13 = (int )__cil_tmp12;
  __cil_tmp14 = 0 + 7;
  __cil_tmp15 = 4 + __cil_tmp14;
  __cil_tmp16 = (unsigned long )hdr;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  __cil_tmp18 = *((u16 *)__cil_tmp17);
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = 0 + 9;
  __cil_tmp21 = 4 + __cil_tmp20;
  __cil_tmp22 = (unsigned long )hdr;
  __cil_tmp23 = __cil_tmp22 + __cil_tmp21;
  __cil_tmp24 = *((u16 *)__cil_tmp23);
  __cil_tmp25 = (int )__cil_tmp24;
  printk("<6>BIOS console buffer at 0x%.8x, start = %d, end = %d, num = %d\n", __cil_tmp7,
         __cil_tmp13, __cil_tmp19, __cil_tmp25);
  __cil_tmp26 = 0 + 9;
  __cil_tmp27 = 4 + __cil_tmp26;
  __cil_tmp28 = (unsigned long )hdr;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  __cil_tmp30 = *((u16 *)__cil_tmp29);
  memconsole_length = (size_t )__cil_tmp30;
  __cil_tmp31 = 0 + 1;
  __cil_tmp32 = 4 + __cil_tmp31;
  __cil_tmp33 = (unsigned long )hdr;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  __cil_tmp35 = *((u32 *)__cil_tmp34);
  __cil_tmp36 = (phys_addr_t )__cil_tmp35;
  tmp = phys_to_virt(__cil_tmp36);
  memconsole_baseaddr = (char *)tmp;
  }
  return;
}
}
static void found_v2_header(struct biosmemcon_ebda *hdr )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  u32 __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  u16 __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  u16 __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u16 __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u16 __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  u16 __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  u16 __cil_tmp41 ;
  u32 __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  u32 __cil_tmp45 ;
  u32 __cil_tmp46 ;
  phys_addr_t __cil_tmp47 ;
  {
  {
  printk("<6>BIOS console v2 EBDA structure found at %p\n", hdr);
  __cil_tmp3 = (unsigned long )hdr;
  __cil_tmp4 = __cil_tmp3 + 4;
  __cil_tmp5 = *((u32 *)__cil_tmp4);
  __cil_tmp6 = 0 + 6;
  __cil_tmp7 = 4 + __cil_tmp6;
  __cil_tmp8 = (unsigned long )hdr;
  __cil_tmp9 = __cil_tmp8 + __cil_tmp7;
  __cil_tmp10 = *((u16 *)__cil_tmp9);
  __cil_tmp11 = (int )__cil_tmp10;
  __cil_tmp12 = 0 + 8;
  __cil_tmp13 = 4 + __cil_tmp12;
  __cil_tmp14 = (unsigned long )hdr;
  __cil_tmp15 = __cil_tmp14 + __cil_tmp13;
  __cil_tmp16 = *((u16 *)__cil_tmp15);
  __cil_tmp17 = (int )__cil_tmp16;
  __cil_tmp18 = 0 + 4;
  __cil_tmp19 = 4 + __cil_tmp18;
  __cil_tmp20 = (unsigned long )hdr;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  __cil_tmp22 = *((u16 *)__cil_tmp21);
  __cil_tmp23 = (int )__cil_tmp22;
  printk("<6>BIOS console buffer at 0x%.8x, start = %d, end = %d, num_bytes = %d\n",
         __cil_tmp5, __cil_tmp11, __cil_tmp17, __cil_tmp23);
  __cil_tmp24 = 0 + 6;
  __cil_tmp25 = 4 + __cil_tmp24;
  __cil_tmp26 = (unsigned long )hdr;
  __cil_tmp27 = __cil_tmp26 + __cil_tmp25;
  __cil_tmp28 = *((u16 *)__cil_tmp27);
  __cil_tmp29 = (int )__cil_tmp28;
  __cil_tmp30 = 0 + 8;
  __cil_tmp31 = 4 + __cil_tmp30;
  __cil_tmp32 = (unsigned long )hdr;
  __cil_tmp33 = __cil_tmp32 + __cil_tmp31;
  __cil_tmp34 = *((u16 *)__cil_tmp33);
  __cil_tmp35 = (int )__cil_tmp34;
  __cil_tmp36 = __cil_tmp35 - __cil_tmp29;
  memconsole_length = (size_t )__cil_tmp36;
  __cil_tmp37 = 0 + 6;
  __cil_tmp38 = 4 + __cil_tmp37;
  __cil_tmp39 = (unsigned long )hdr;
  __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
  __cil_tmp41 = *((u16 *)__cil_tmp40);
  __cil_tmp42 = (u32 )__cil_tmp41;
  __cil_tmp43 = (unsigned long )hdr;
  __cil_tmp44 = __cil_tmp43 + 4;
  __cil_tmp45 = *((u32 *)__cil_tmp44);
  __cil_tmp46 = __cil_tmp45 + __cil_tmp42;
  __cil_tmp47 = (phys_addr_t )__cil_tmp46;
  tmp = phys_to_virt(__cil_tmp47);
  memconsole_baseaddr = (char *)tmp;
  }
  return;
}
}
static bool found_memconsole(void)
{ unsigned int address ;
  size_t length ;
  size_t cur ;
  void *tmp ;
  struct biosmemcon_ebda *hdr ;
  void *tmp___0 ;
  phys_addr_t __cil_tmp7 ;
  u8 *__cil_tmp8 ;
  u8 __cil_tmp9 ;
  size_t __cil_tmp10 ;
  size_t __cil_tmp11 ;
  phys_addr_t __cil_tmp12 ;
  u32 __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  u32 __cil_tmp20 ;
  u32 __cil_tmp21 ;
  {
  {
  address = get_bios_ebda();
  }
  if (! address) {
    {
    printk("<6>BIOS EBDA non-existent.\n");
    }
    return ((bool )0);
  } else {
  }
  {
  __cil_tmp7 = (phys_addr_t )address;
  tmp = phys_to_virt(__cil_tmp7);
  __cil_tmp8 = (u8 *)tmp;
  __cil_tmp9 = *__cil_tmp8;
  length = (size_t )__cil_tmp9;
  length = length << 10;
  cur = (size_t )0;
  }
  {
  while (1) {
    while_continue: ;
    if (cur < length) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp10 = (size_t )address;
    __cil_tmp11 = __cil_tmp10 + cur;
    __cil_tmp12 = (phys_addr_t )__cil_tmp11;
    tmp___0 = phys_to_virt(__cil_tmp12);
    hdr = (struct biosmemcon_ebda *)tmp___0;
    }
    {
    __cil_tmp13 = *((u32 *)hdr);
    if (__cil_tmp13 == 3735927486U) {
      {
      found_v1_header(hdr);
      }
      return ((bool )1);
    } else {
    }
    }
    {
    __cil_tmp14 = 78 << 24;
    __cil_tmp15 = 79 << 16;
    __cil_tmp16 = 67 << 8;
    __cil_tmp17 = 77 | __cil_tmp16;
    __cil_tmp18 = __cil_tmp17 | __cil_tmp15;
    __cil_tmp19 = __cil_tmp18 | __cil_tmp14;
    __cil_tmp20 = (u32 )__cil_tmp19;
    __cil_tmp21 = *((u32 *)hdr);
    if (__cil_tmp21 == __cil_tmp20) {
      {
      found_v2_header(hdr);
      }
      return ((bool )1);
    } else {
    }
    }
    cur = cur + 1UL;
  }
  while_break: ;
  }
  {
  printk("<6>BIOS console EBDA structure not found!\n");
  }
  return ((bool )0);
}
}
static struct dmi_system_id memconsole_dmi_table[1] __attribute__((__section__(".init.data"))) = { {(int (*)(struct dmi_system_id const * ))0,
      "Google Board", {{(unsigned char)9, {(char )'G', (char )'o', (char )'o', (char )'g',
                                           (char )'l', (char )'e', (char )',', (char )' ',
                                           (char )'I', (char )'n', (char )'c', (char )'.',
                                           (char )'\000'}}, {(unsigned char)0, {(char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0}},
                       {(unsigned char)0, {(char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0, (char)0,
                                           (char)0, (char)0, (char)0, (char)0}}, {(unsigned char)0,
                                                                                  {(char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0,
                                                                                   (char)0}}},
      (void *)0}};
extern struct dmi_system_id const __mod_dmi_device_table __attribute__((__unused__,
__alias__("memconsole_dmi_table"))) ;
static int memconsole_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int memconsole_init(void)
{ int ret ;
  int tmp ;
  bool tmp___0 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct dmi_system_id *__cil_tmp6 ;
  struct dmi_system_id const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct bin_attribute const *__cil_tmp9 ;
  {
  {
  __cil_tmp4 = 0 * 344UL;
  __cil_tmp5 = (unsigned long )(memconsole_dmi_table) + __cil_tmp4;
  __cil_tmp6 = (struct dmi_system_id *)__cil_tmp5;
  __cil_tmp7 = (struct dmi_system_id const *)__cil_tmp6;
  tmp = dmi_check_system(__cil_tmp7);
  }
  if (tmp) {
  } else {
    return (-19);
  }
  {
  tmp___0 = found_memconsole();
  }
  if (tmp___0) {
  } else {
    return (-19);
  }
  {
  __cil_tmp8 = (unsigned long )(& memconsole_bin_attr) + 16;
  *((size_t *)__cil_tmp8) = memconsole_length;
  __cil_tmp9 = (struct bin_attribute const *)(& memconsole_bin_attr);
  ret = (int )sysfs_create_bin_file(firmware_kobj, __cil_tmp9);
  }
  return (ret);
}
}
static void memconsole_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void memconsole_exit(void)
{ struct bin_attribute const *__cil_tmp1 ;
  {
  {
  __cil_tmp1 = (struct bin_attribute const *)(& memconsole_bin_attr);
  sysfs_remove_bin_file(firmware_kobj, __cil_tmp1);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = memconsole_init();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  memconsole_exit();
  }
  return;
}
}
static char const __mod_author166[20] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'G',
        (char const )'o', (char const )'o', (char const )'g', (char const )'l',
        (char const )'e', (char const )',', (char const )' ', (char const )'I',
        (char const )'n', (char const )'c', (char const )'.', (char const )'\000'};
static char const __mod_license167[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct file *var_group1 ;
  struct kobject *var_group2 ;
  struct bin_attribute *var_memconsole_read_0_p2 ;
  char *var_memconsole_read_0_p3 ;
  loff_t var_memconsole_read_0_p4 ;
  size_t var_memconsole_read_0_p5 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = memconsole_init();
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
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        memconsole_read(var_group1, var_group2, var_memconsole_read_0_p2, var_memconsole_read_0_p3,
                        var_memconsole_read_0_p4, var_memconsole_read_0_p5);
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
  memconsole_exit();
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
int dmi_check_system(const struct dmi_system_id *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t memory_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
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
