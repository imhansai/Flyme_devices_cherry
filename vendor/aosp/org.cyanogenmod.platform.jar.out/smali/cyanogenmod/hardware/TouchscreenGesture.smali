.class public Lcyanogenmod/hardware/TouchscreenGesture;
.super Ljava/lang/Object;
.source "TouchscreenGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/TouchscreenGesture$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/hardware/TouchscreenGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public final keycode:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcyanogenmod/hardware/TouchscreenGesture$1;

    invoke-direct {v0}, Lcyanogenmod/hardware/TouchscreenGesture$1;-><init>()V

    .line 66
    sput-object v0, Lcyanogenmod/hardware/TouchscreenGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "keycode"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcyanogenmod/hardware/TouchscreenGesture;->id:I

    .line 49
    iput-object p2, p0, Lcyanogenmod/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcyanogenmod/hardware/TouchscreenGesture;->keycode:I

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget v0, p0, Lcyanogenmod/hardware/TouchscreenGesture;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcyanogenmod/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcyanogenmod/hardware/TouchscreenGesture;->keycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
