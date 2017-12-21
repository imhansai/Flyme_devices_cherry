.class Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;
.super Ljava/lang/Object;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field private final event:I

.field private final info:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->event:I

    return v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->info:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->timestamp:J

    return-wide v0
.end method

.method constructor <init>(JILjava/lang/String;)V
    .locals 1
    .param p1, "timestamp_"    # J
    .param p3, "event_"    # I
    .param p4, "info_"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-wide p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->timestamp:J

    .line 508
    iput p3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->event:I

    .line 509
    iput-object p4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog$Entry;->info:Ljava/lang/String;

    .line 506
    return-void
.end method
