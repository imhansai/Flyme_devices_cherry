.class public Lcyanogenmod/power/PerformanceManager;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# static fields
.field public static final POSSIBLE_POWER_PROFILES:[I

.field public static final POWER_PROFILE_CHANGED:Ljava/lang/String; = "cyanogenmod.power.PROFILE_CHANGED"

.field public static final PROFILE_BALANCED:I = 0x1

.field public static final PROFILE_BIAS_PERFORMANCE:I = 0x4

.field public static final PROFILE_BIAS_POWER_SAVE:I = 0x3

.field public static final PROFILE_HIGH_PERFORMANCE:I = 0x2

.field public static final PROFILE_POWER_SAVE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PerformanceManager"

.field private static sInstance:Lcyanogenmod/power/PerformanceManager;

.field private static sService:Lcyanogenmod/power/IPerformanceManager;


# instance fields
.field private mNumberOfProfiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    const/4 v1, 0x1

    .line 80
    const/4 v2, 0x2

    .line 81
    const/4 v3, 0x3

    .line 82
    const/4 v4, 0x4

    .line 77
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcyanogenmod/power/PerformanceManager;->POSSIBLE_POWER_PROFILES:[I

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    .line 96
    invoke-static {}, Lcyanogenmod/power/PerformanceManager;->getService()Lcyanogenmod/power/IPerformanceManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "org.cyanogenmod.performance"

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    if-nez v1, :cond_0

    .line 99
    const-string/jumbo v1, "PerformanceManager"

    const-string/jumbo v2, "Unable to get PerformanceManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v1}, Lcyanogenmod/power/IPerformanceManager;->getNumberOfProfiles()I

    move-result v1

    iput v1, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    if-nez v0, :cond_0

    .line 133
    const-string/jumbo v0, "PerformanceManager"

    const-string/jumbo v1, "not connected to PerformanceManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/power/PerformanceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    sget-object v0, Lcyanogenmod/power/PerformanceManager;->sInstance:Lcyanogenmod/power/PerformanceManager;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcyanogenmod/power/PerformanceManager;

    invoke-direct {v0, p0}, Lcyanogenmod/power/PerformanceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/power/PerformanceManager;->sInstance:Lcyanogenmod/power/PerformanceManager;

    .line 115
    :cond_0
    sget-object v0, Lcyanogenmod/power/PerformanceManager;->sInstance:Lcyanogenmod/power/PerformanceManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/power/IPerformanceManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    return-object v1

    .line 123
    :cond_0
    const-string/jumbo v1, "cmperformance"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 124
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 125
    invoke-static {v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/power/IPerformanceManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    .line 126
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    return-object v1

    .line 128
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cpuBoost(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 149
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    sget-object v1, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v1, p1}, Lcyanogenmod/power/IPerformanceManager;->cpuBoost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActivePowerProfile()Lcyanogenmod/power/PerformanceProfile;
    .locals 3

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "ret":Lcyanogenmod/power/PerformanceProfile;
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v2}, Lcyanogenmod/power/IPerformanceManager;->getActivePowerProfile()Lcyanogenmod/power/PerformanceProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    .end local v1    # "ret":Lcyanogenmod/power/PerformanceProfile;
    :cond_0
    :goto_0
    return-object v1

    .line 256
    .restart local v1    # "ret":Lcyanogenmod/power/PerformanceProfile;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNumberOfProfiles()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    return v0
.end method

.method public getPowerProfile()I
    .locals 3

    .prologue
    .line 212
    const/4 v1, -0x1

    .line 213
    .local v1, "ret":I
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v2}, Lcyanogenmod/power/IPerformanceManager;->getPowerProfile()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPowerProfile(I)Lcyanogenmod/power/PerformanceProfile;
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "ret":Lcyanogenmod/power/PerformanceProfile;
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 234
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v2, p1}, Lcyanogenmod/power/IPerformanceManager;->getPowerProfileById(I)Lcyanogenmod/power/PerformanceProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    .end local v1    # "ret":Lcyanogenmod/power/PerformanceProfile;
    :cond_0
    :goto_0
    return-object v1

    .line 237
    .restart local v1    # "ret":Lcyanogenmod/power/PerformanceProfile;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPowerProfiles()Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lcyanogenmod/power/PerformanceProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 288
    .local v2, "profiles":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcyanogenmod/power/PerformanceProfile;>;"
    iget v3, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v3, :cond_0

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    sget-object v3, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v3}, Lcyanogenmod/power/IPerformanceManager;->getPowerProfiles()[Lcyanogenmod/power/PerformanceProfile;

    move-result-object v1

    .line 292
    .local v1, "p":[Lcyanogenmod/power/PerformanceProfile;
    if-eqz v1, :cond_0

    .line 293
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v1    # "p":[Lcyanogenmod/power/PerformanceProfile;
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v3

    return-object v3

    .line 296
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getProfileHasAppProfiles(I)Z
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "ret":Z
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    if-lez v2, :cond_0

    .line 271
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v2, p1}, Lcyanogenmod/power/IPerformanceManager;->getPowerProfileById(I)Lcyanogenmod/power/PerformanceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/power/PerformanceProfile;->isBoostEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 278
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 274
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPowerProfile(I)Z
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 170
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 171
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Power profiles not enabled on this system!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    .local v0, "changed":Z
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-interface {v2, p1}, Lcyanogenmod/power/IPerformanceManager;->setPowerProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    .end local v0    # "changed":Z
    :cond_1
    return v0

    .line 179
    .restart local v0    # "changed":Z
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setPowerProfile(Lcyanogenmod/power/PerformanceProfile;)Z
    .locals 4
    .param p1, "profile"    # Lcyanogenmod/power/PerformanceProfile;

    .prologue
    .line 191
    iget v2, p0, Lcyanogenmod/power/PerformanceManager;->mNumberOfProfiles:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Power profiles not enabled on this system!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 197
    .local v0, "changed":Z
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/power/PerformanceManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    sget-object v2, Lcyanogenmod/power/PerformanceManager;->sService:Lcyanogenmod/power/IPerformanceManager;

    invoke-virtual {p1}, Lcyanogenmod/power/PerformanceProfile;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcyanogenmod/power/IPerformanceManager;->setPowerProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 203
    .end local v0    # "changed":Z
    :cond_1
    return v0

    .line 200
    .restart local v0    # "changed":Z
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
