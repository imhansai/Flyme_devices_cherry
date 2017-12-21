.class public final Lorg/cyanogenmod/platform/internal/display/TwilightTracker;
.super Ljava/lang/Object;
.source "TwilightTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/TwilightTracker$1;,
        Lorg/cyanogenmod/platform/internal/display/TwilightTracker$2;,
        Lorg/cyanogenmod/platform/internal/display/TwilightTracker$3;,
        Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;,
        Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;,
        Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;,
        Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_TWILIGHT_STATE:Ljava/lang/String; = "cyanogenmod.platform.intent.action.UPDATE_TWILIGHT_STATE"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TwilightTracker"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationHandler:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mLock:Ljava/lang/Object;

.field private mTwilightState:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLocationHandler:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;

    return-object v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 1
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    invoke-static {p0, p1}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;)V
    .locals 0
    .param p1, "state"    # Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->setTwilightState(Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    .line 405
    new-instance v1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$1;-><init>(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 422
    new-instance v1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$2;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$2;-><init>(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 436
    new-instance v1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$3;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$3;-><init>(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLocationListener:Landroid/location/LocationListener;

    .line 70
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mContext:Landroid/content/Context;

    .line 71
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 72
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v2, "location"

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLocationManager:Landroid/location/LocationManager;

    .line 74
    new-instance v1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;-><init>(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;)V

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLocationHandler:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "cyanogenmod.platform.intent.action.UPDATE_TWILIGHT_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method private static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    if-nez p1, :cond_0

    .line 130
    return v3

    .line 133
    :cond_0
    if-nez p0, :cond_1

    .line 134
    return v2

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 139
    return v3

    .line 143
    :cond_2
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 146
    .local v0, "distance":F
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float v1, v4, v5

    .line 150
    .local v1, "totalAccuracy":F
    cmpl-float v4, v0, v1

    if-ltz v4, :cond_3

    :goto_0
    return v2

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private setTwilightState(Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;)V
    .locals 4
    .param p1, "state"    # Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;

    .prologue
    .line 111
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 112
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mTwilightState:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;

    invoke-static {v2, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mTwilightState:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;

    .line 119
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 120
    .local v1, "listenerLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 121
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;

    invoke-virtual {v2}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;->postUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "listenerLen":I
    :cond_0
    monitor-exit v3

    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getCurrentState()Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mTwilightState:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public registerListener(Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 100
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;

    invoke-direct {v2, p1, p2}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;-><init>(Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 104
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->mLocationHandler:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;->enableLocationUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
