.class Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;
.super Ljava/lang/Object;
.source "TwilightTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/TwilightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwilightListenerRecord"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;->mListener:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;

    .line 550
    iput-object p2, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    .line 548
    return-void
.end method


# virtual methods
.method public postUpdate()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListenerRecord;->mListener:Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$TwilightListener;->onTwilightStateChanged()V

    .line 558
    return-void
.end method
