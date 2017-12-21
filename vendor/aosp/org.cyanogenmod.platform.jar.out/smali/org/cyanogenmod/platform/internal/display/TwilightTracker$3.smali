.class Lorg/cyanogenmod/platform/internal/display/TwilightTracker$3;
.super Ljava/lang/Object;
.source "TwilightTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/TwilightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/TwilightTracker;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/TwilightTracker;

    .prologue
    .line 436
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$3;->this$0:Lorg/cyanogenmod/platform/internal/display/TwilightTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 438
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$3;->this$0:Lorg/cyanogenmod/platform/internal/display/TwilightTracker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->-get3(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;->processNewLocation(Landroid/location/Location;)V

    .line 437
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 441
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 444
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 447
    return-void
.end method
