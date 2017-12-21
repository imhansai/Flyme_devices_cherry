.class Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceSettingsObserver"
.end annotation


# instance fields
.field private final APP_PERFORMANCE_PROFILES_ENABLED_URI:Landroid/net/Uri;

.field private final PERFORMANCE_PROFILE_URI:Landroid/net/Uri;

.field private final mCR:Landroid/content/ContentResolver;

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .line 161
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 153
    const-string/jumbo v0, "app_perf_profiles_enabled"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->APP_PERFORMANCE_PROFILES_ENABLED_URI:Landroid/net/Uri;

    .line 156
    const-string/jumbo v0, "performance_profile"

    invoke-static {v0}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 155
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->PERFORMANCE_PROFILE_URI:Landroid/net/Uri;

    .line 162
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    .line 160
    return-void
.end method


# virtual methods
.method public observe(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->APP_PERFORMANCE_PROFILES_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->PERFORMANCE_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    invoke-virtual {p0, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->onChange(Z)V

    .line 165
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 178
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    const-string/jumbo v3, "performance_profile"

    invoke-static {v2, v3, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "profile":I
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->mCR:Landroid/content/ContentResolver;

    const-string/jumbo v3, "app_perf_profiles_enabled"

    invoke-static {v2, v3, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v0, 0x1

    .line 181
    .local v0, "boost":Z
    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get5(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 182
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get9(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get9(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/power/PerformanceProfile;

    invoke-virtual {v2}, Lcyanogenmod/power/PerformanceProfile;->isBoostEnabled()Z

    move-result v0

    .line 186
    .end local v0    # "boost":Z
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2, v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-set0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)Z

    .line 187
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get10(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v2

    if-gez v2, :cond_1

    .line 188
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-set3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)I

    .line 189
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceSettingsObserver;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get10(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap2(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 177
    return-void

    .line 179
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "boost":Z
    goto :goto_0

    .line 183
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 181
    .end local v0    # "boost":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
