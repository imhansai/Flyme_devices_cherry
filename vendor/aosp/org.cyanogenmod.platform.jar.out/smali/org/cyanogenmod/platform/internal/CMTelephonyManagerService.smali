.class public Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "CMTelephonyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CMTelephonyManagerSrv"

.field private static localLOGD:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IBinder;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isDataConnectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isDataConnectionSelectedOnSub(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setSubState(IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->isSubActive(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyModifyPermission()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->enforceTelephonyReadPermission()V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDataConnectionSelectedOnSub(I)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDataConnectionState(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDefaultPhoneSub(I)V

    return-void
.end method

.method static synthetic -wrap9(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->setDefaultSmsSub(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "CMTelephonyManagerSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mService:Landroid/os/IBinder;

    .line 181
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method private enforceTelephonyModifyPermission()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    .line 351
    const-string/jumbo v1, "cyanogenmod.permission.MODIFY_MSIM_PHONE_STATE"

    .line 352
    const-string/jumbo v2, "CMTelephonyManagerService"

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private enforceTelephonyReadPermission()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    .line 345
    const-string/jumbo v1, "cyanogenmod.permission.READ_MSIM_PHONE_STATE"

    .line 346
    const-string/jumbo v2, "CMTelephonyManagerService"

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method private getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 200
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 202
    const-string/jumbo v2, "CMTelephonyManagerSrv"

    const-string/jumbo v3, "The active subscriptions where obtained from the subscription manager."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return-object v0
.end method

.method private isDataConnectionEnabled()Z
    .locals 4

    .prologue
    .line 273
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 274
    const-string/jumbo v1, "CMTelephonyManagerSrv"

    const-string/jumbo v2, "Checking if the network data connection is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 279
    .local v0, "dataEnabled":Z
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_1

    .line 280
    const-string/jumbo v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data network connection is inactive (false) or active (true): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    return v0
.end method

.method private isDataConnectionSelectedOnSub(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 249
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 251
    .local v0, "validSubscriptionId":Z
    if-eqz v0, :cond_0

    .line 265
    const/4 v1, 0x1

    return v1

    .line 267
    :cond_0
    const-string/jumbo v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid subscription identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v1, 0x0

    return v1
.end method

.method private isSubActive(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 208
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 210
    .local v1, "validSubscriptionId":Z
    if-eqz v1, :cond_2

    .line 212
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 211
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIdx(I)I

    move-result v0

    .line 213
    .local v0, "simState":I
    packed-switch v0, :pswitch_data_0

    .line 223
    :pswitch_0
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 224
    const-string/jumbo v2, "CMTelephonyManagerSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 218
    :pswitch_1
    sget-boolean v2, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 219
    const-string/jumbo v2, "CMTelephonyManagerSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is NOT active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    return v5

    .line 229
    .end local v0    # "simState":I
    :cond_2
    const-string/jumbo v2, "CMTelephonyManagerSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid subscription identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v5

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setDataConnectionSelectedOnSub(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 299
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 300
    const-string/jumbo v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting the network data connection for subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 304
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 298
    return-void
.end method

.method private setDataConnectionState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 287
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 288
    const-string/jumbo v0, "CMTelephonyManagerSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting the network data connection inactive (false) or active (true): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    .line 292
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    .line 286
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    goto :goto_0
.end method

.method private setDefaultPhoneSub(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 308
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 309
    const-string/jumbo v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting the SIM for phone calls on subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 322
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 307
    return-void
.end method

.method private setDefaultSmsSub(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 326
    sget-boolean v1, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 327
    const-string/jumbo v1, "CMTelephonyManagerSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting the SIM for phone calls on subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 340
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 325
    return-void
.end method

.method private setSubState(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    .line 235
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "CMTelephonyManagerSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting the subscription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to inactive (false) or active (true): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string/jumbo v0, "org.cyanogenmod.telephony"

    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 191
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "CMTelephonyManagerSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CM telephony manager service start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    const-string/jumbo v0, "cmtelephonymanager"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 195
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 190
    return-void
.end method
