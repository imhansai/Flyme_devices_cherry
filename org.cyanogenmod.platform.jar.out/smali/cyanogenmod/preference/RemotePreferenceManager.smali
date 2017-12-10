.class public Lcyanogenmod/preference/RemotePreferenceManager;
.super Ljava/lang/Object;
.source "RemotePreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/preference/RemotePreferenceManager$1;,
        Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/preference/RemotePreferenceManager;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/content/BroadcastReceiver;

.field private final mMainHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcyanogenmod/preference/RemotePreferenceManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcyanogenmod/preference/RemotePreferenceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcyanogenmod/preference/RemotePreferenceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/preference/RemotePreferenceManager;->requestUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->TAG:Ljava/lang/String;

    .line 53
    const-class v0, Lcyanogenmod/preference/RemotePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/preference/RemotePreferenceManager;->DEBUG:Z

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mMainHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcyanogenmod/preference/RemotePreferenceManager$1;

    invoke-direct {v0, p0}, Lcyanogenmod/preference/RemotePreferenceManager$1;-><init>(Lcyanogenmod/preference/RemotePreferenceManager;)V

    iput-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcyanogenmod/preference/RemotePreferenceManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcyanogenmod/preference/RemotePreferenceManager;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->sInstance:Lcyanogenmod/preference/RemotePreferenceManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcyanogenmod/preference/RemotePreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->sInstance:Lcyanogenmod/preference/RemotePreferenceManager;

    .line 80
    :cond_0
    sget-object v0, Lcyanogenmod/preference/RemotePreferenceManager;->sInstance:Lcyanogenmod/preference/RemotePreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestUpdate(Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v9, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    monitor-enter v9

    .line 130
    :try_start_0
    iget-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .local v1, "i":Landroid/content/Intent;
    if-nez v1, :cond_0

    monitor-exit v9

    .line 132
    return-void

    .line 134
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 135
    const-string/jumbo v3, "cyanogenmod.permission.MANAGE_REMOTE_PREFERENCES"

    .line 136
    iget-object v4, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 134
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 128
    return-void

    .line 129
    .end local v1    # "i":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method


# virtual methods
.method public attach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pref"    # Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;

    .prologue
    .line 85
    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 87
    .local v1, "i":Landroid/content/Intent;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    monitor-exit v3

    .line 92
    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v3

    .line 93
    if-eqz v1, :cond_2

    .line 94
    :try_start_1
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 95
    .local v0, "cbs":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;>;"
    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "cbs":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    .restart local v0    # "cbs":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;>;"
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 99
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v4, "RemotePreference"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    .line 100
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v2, Landroid/os/Handler;

    iget-object v4, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    .line 102
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "cyanogenmod.intent.action.REFRESH_PREFERENCE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v6, "cyanogenmod.permission.MANAGE_REMOTE_PREFERENCES"

    iget-object v7, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-direct {p0, p1}, Lcyanogenmod/preference/RemotePreferenceManager;->requestUpdate(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "cbs":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;>;"
    :cond_2
    monitor-exit v3

    .line 83
    return-void

    .line 88
    :cond_3
    :try_start_2
    invoke-interface {p2}, Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;->getReceiverIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    .end local v1    # "i":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 92
    .restart local v1    # "i":Landroid/content/Intent;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public detach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pref"    # Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;

    .prologue
    .line 114
    iget-object v2, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 115
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 116
    .local v0, "cbs":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 116
    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mThread:Landroid/os/HandlerThread;

    .line 123
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcyanogenmod/preference/RemotePreferenceManager;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 113
    return-void

    .line 114
    .end local v0    # "cbs":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
