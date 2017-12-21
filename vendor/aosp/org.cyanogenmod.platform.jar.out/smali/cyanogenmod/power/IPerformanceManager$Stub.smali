.class public abstract Lcyanogenmod/power/IPerformanceManager$Stub;
.super Landroid/os/Binder;
.source "IPerformanceManager.java"

# interfaces
.implements Lcyanogenmod/power/IPerformanceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/power/IPerformanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.power.IPerformanceManager"

.field static final TRANSACTION_cpuBoost:I = 0x1

.field static final TRANSACTION_getActivePowerProfile:I = 0x7

.field static final TRANSACTION_getNumberOfProfiles:I = 0x4

.field static final TRANSACTION_getPowerProfile:I = 0x3

.field static final TRANSACTION_getPowerProfileById:I = 0x6

.field static final TRANSACTION_getPowerProfiles:I = 0x5

.field static final TRANSACTION_setPowerProfile:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string/jumbo v0, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/power/IPerformanceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 60
    if-nez p0, :cond_0

    .line 61
    return-object v1

    .line 63
    :cond_0
    const-string/jumbo v1, "cyanogenmod.power.IPerformanceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/power/IPerformanceManager;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lcyanogenmod/power/IPerformanceManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 67
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 75
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 79
    :sswitch_0
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v6

    .line 84
    :sswitch_1
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->cpuBoost(I)V

    .line 88
    return v6

    .line 92
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v7, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->setPowerProfile(I)Z

    move-result v3

    .line 96
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v6

    .line 102
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_3
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getPowerProfile()I

    move-result v1

    .line 104
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v6

    .line 110
    .end local v1    # "_result":I
    :sswitch_4
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getNumberOfProfiles()I

    move-result v1

    .line 112
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v6

    .line 118
    .end local v1    # "_result":I
    :sswitch_5
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getPowerProfiles()[Lcyanogenmod/power/PerformanceProfile;

    move-result-object v4

    .line 120
    .local v4, "_result":[Lcyanogenmod/power/PerformanceProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 122
    return v6

    .line 126
    .end local v4    # "_result":[Lcyanogenmod/power/PerformanceProfile;
    :sswitch_6
    const-string/jumbo v7, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getPowerProfileById(I)Lcyanogenmod/power/PerformanceProfile;

    move-result-object v2

    .line 130
    .local v2, "_result":Lcyanogenmod/power/PerformanceProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {v2, p3, v6}, Lcyanogenmod/power/PerformanceProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    :goto_0
    return v6

    .line 136
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 142
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcyanogenmod/power/PerformanceProfile;
    :sswitch_7
    const-string/jumbo v7, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getActivePowerProfile()Lcyanogenmod/power/PerformanceProfile;

    move-result-object v2

    .line 144
    .restart local v2    # "_result":Lcyanogenmod/power/PerformanceProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {v2, p3, v6}, Lcyanogenmod/power/PerformanceProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    :goto_1
    return v6

    .line 150
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
