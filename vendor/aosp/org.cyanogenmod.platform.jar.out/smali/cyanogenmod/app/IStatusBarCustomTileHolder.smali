.class public interface abstract Lcyanogenmod/app/IStatusBarCustomTileHolder;
.super Ljava/lang/Object;
.source "IStatusBarCustomTileHolder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/IStatusBarCustomTileHolder$NoOp;,
        Lcyanogenmod/app/IStatusBarCustomTileHolder$Stub;
    }
.end annotation


# virtual methods
.method public abstract get()Lcyanogenmod/app/StatusBarPanelCustomTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
