.class Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;
.super Lcyanogenmod/app/ICustomTileListener$Stub;
.source "CustomTileListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTileListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICustomTileListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/app/CustomTileListenerService;


# direct methods
.method private constructor <init>(Lcyanogenmod/app/CustomTileListenerService;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/app/CustomTileListenerService;

    .prologue
    .line 121
    iput-object p1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-direct {p0}, Lcyanogenmod/app/ICustomTileListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTileListenerService;Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/app/CustomTileListenerService;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;-><init>(Lcyanogenmod/app/CustomTileListenerService;)V

    return-void
.end method


# virtual methods
.method public onCustomTilePosted(Lcyanogenmod/app/IStatusBarCustomTileHolder;)V
    .locals 6
    .param p1, "sbcHolder"    # Lcyanogenmod/app/IStatusBarCustomTileHolder;

    .prologue
    .line 136
    :try_start_0
    invoke-interface {p1}, Lcyanogenmod/app/IStatusBarCustomTileHolder;->get()Lcyanogenmod/app/StatusBarPanelCustomTile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    .local v1, "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get1(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 143
    :try_start_1
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v3, v1}, Lcyanogenmod/app/CustomTileListenerService;->onCustomTilePosted(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 133
    return-void

    .line 137
    .end local v1    # "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onCustomTilePosted: Error receiving StatusBarPanelCustomTile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    return-void

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catch_1
    move-exception v2

    .line 145
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Error running onCustomTilePosted"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 141
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onCustomTileRemoved(Lcyanogenmod/app/IStatusBarCustomTileHolder;)V
    .locals 6
    .param p1, "sbcHolder"    # Lcyanogenmod/app/IStatusBarCustomTileHolder;

    .prologue
    .line 153
    :try_start_0
    invoke-interface {p1}, Lcyanogenmod/app/IStatusBarCustomTileHolder;->get()Lcyanogenmod/app/StatusBarPanelCustomTile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    .local v1, "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get1(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 160
    :try_start_1
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v3, v1}, Lcyanogenmod/app/CustomTileListenerService;->onCustomTileRemoved(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 150
    return-void

    .line 154
    .end local v1    # "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onCustomTileRemoved: Error receiving StatusBarPanelCustomTile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    return-void

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catch_1
    move-exception v2

    .line 162
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Error running onCustomTileRemoved"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onListenerConnected()V
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v1}, Lcyanogenmod/app/CustomTileListenerService;->-get1(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v1}, Lcyanogenmod/app/CustomTileListenerService;->onListenerConnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 123
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v1}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Error running onListenerConnected"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
