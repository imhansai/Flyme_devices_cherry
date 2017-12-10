.class public Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;
.super Ljava/lang/Object;
.source "TwilightTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/TwilightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwilightState"
.end annotation


# instance fields
.field private final mIsNight:Z

.field private final mTodaySunrise:J

.field private final mTodaySunset:J

.field private final mTomorrowSunrise:J

.field private final mYesterdaySunset:J


# direct methods
.method constructor <init>(ZJJJJ)V
    .locals 0
    .param p1, "isNight"    # Z
    .param p2, "yesterdaySunset"    # J
    .param p4, "todaySunrise"    # J
    .param p6, "todaySunset"    # J
    .param p8, "tomorrowSunrise"    # J

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mIsNight:Z

    .line 463
    iput-wide p2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    .line 464
    iput-wide p4, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    .line 465
    iput-wide p6, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunset:J

    .line 466
    iput-wide p8, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    .line 461
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 510
    instance-of v0, p1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->equals(Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;)Z
    .locals 6
    .param p1, "other"    # Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;

    .prologue
    const/4 v0, 0x0

    .line 514
    if-eqz p1, :cond_0

    .line 515
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mIsNight:Z

    iget-boolean v2, p1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mIsNight:Z

    if-ne v1, v2, :cond_0

    .line 516
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    iget-wide v4, p1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 517
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    iget-wide v4, p1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 518
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunset:J

    iget-wide v4, p1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunset:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 519
    iget-wide v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    iget-wide v4, p1, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 514
    :cond_0
    return v0
.end method

.method public getTodaySunrise()J
    .locals 2

    .prologue
    .line 489
    iget-wide v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    return-wide v0
.end method

.method public getTodaySunset()J
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunset:J

    return-wide v0
.end method

.method public getTomorrowSunrise()J
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    return-wide v0
.end method

.method public getYesterdaySunset()J
    .locals 2

    .prologue
    .line 481
    iget-wide v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public isNight()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mIsNight:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 529
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 530
    .local v0, "f":Ljava/text/DateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{TwilightState: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mIsNight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    const-string/jumbo v2, ", mYesterdaySunset="

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mYesterdaySunset:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 532
    const-string/jumbo v2, ", mTodaySunrise="

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 532
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunrise:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    const-string/jumbo v2, ", mTodaySunset="

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTodaySunset:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    const-string/jumbo v2, ", mTomorrowSunrise="

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightState;->mTomorrowSunrise:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    const-string/jumbo v2, "}"

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
