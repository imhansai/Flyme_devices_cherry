.class Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;
.super Ljava/lang/Object;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoostLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;
    }
.end annotation


# static fields
.field static final APP_PROFILE:I = 0x0

.field static final CPU_BOOST:I = 0x1

.field static final EVENTS:[Ljava/lang/String;

.field private static final LOG_BUF_SIZE:I = 0x19

.field static final USER_PROFILE:I = 0x2


# instance fields
.field private final mBuffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 496
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 497
    const-string/jumbo v1, "APP_PROFILE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "CPU_BOOST"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "USER_PROFILE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 496
    sput-object v0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->EVENTS:[Ljava/lang/String;

    .line 491
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->mBuffer:Ljava/util/ArrayDeque;

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;-><init>()V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 525
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->mBuffer:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 526
    :try_start_0
    const-string/jumbo v2, " Boost log:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->mBuffer:Ljava/util/ArrayDeque;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;

    .line 528
    .local v0, "entry":Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;
    const-string/jumbo v2, "  %1$tH:%1$tM:%1$tS.%1$tL: %2$14s  %3$s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 529
    new-instance v5, Ljava/util/Date;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->-get2(Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->EVENTS:[Ljava/lang/String;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->-get0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;)I

    move-result v6

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->-get1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 528
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 525
    .end local v0    # "entry":Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 531
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 524
    return-void
.end method

.method log(ILjava/lang/String;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->mBuffer:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->mBuffer:Ljava/util/ArrayDeque;

    new-instance v2, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, p1, p2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    .line 519
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 515
    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
