.class final Lcyanogenmod/power/PerformanceProfile$1;
.super Ljava/lang/Object;
.source "PerformanceProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/power/PerformanceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcyanogenmod/power/PerformanceProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/power/PerformanceProfile;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 139
    new-instance v0, Lcyanogenmod/power/PerformanceProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcyanogenmod/power/PerformanceProfile;-><init>(Landroid/os/Parcel;Lcyanogenmod/power/PerformanceProfile;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcyanogenmod/power/PerformanceProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/power/PerformanceProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/power/PerformanceProfile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 144
    new-array v0, p1, [Lcyanogenmod/power/PerformanceProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcyanogenmod/power/PerformanceProfile$1;->newArray(I)[Lcyanogenmod/power/PerformanceProfile;

    move-result-object v0

    return-object v0
.end method
