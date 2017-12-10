.class Lcyanogenmod/preference/RemotePreferenceManager$1$1;
.super Ljava/lang/Object;
.source "RemotePreferenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/preference/RemotePreferenceManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcyanogenmod/preference/RemotePreferenceManager$1;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcyanogenmod/preference/RemotePreferenceManager$1;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcyanogenmod/preference/RemotePreferenceManager$1;
    .param p2, "val$key"    # Ljava/lang/String;
    .param p3, "val$bundle"    # Landroid/os/Bundle;

    .prologue
    .line 161
    iput-object p1, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->this$1:Lcyanogenmod/preference/RemotePreferenceManager$1;

    iput-object p2, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 164
    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->this$1:Lcyanogenmod/preference/RemotePreferenceManager$1;

    iget-object v3, v3, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v3}, Lcyanogenmod/preference/RemotePreferenceManager;->-get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 165
    :try_start_0
    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->this$1:Lcyanogenmod/preference/RemotePreferenceManager$1;

    iget-object v3, v3, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v3}, Lcyanogenmod/preference/RemotePreferenceManager;->-get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->val$key:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->this$1:Lcyanogenmod/preference/RemotePreferenceManager$1;

    iget-object v3, v3, Lcyanogenmod/preference/RemotePreferenceManager$1;->this$0:Lcyanogenmod/preference/RemotePreferenceManager;

    invoke-static {v3}, Lcyanogenmod/preference/RemotePreferenceManager;->-get2(Lcyanogenmod/preference/RemotePreferenceManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->val$key:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 167
    .local v2, "cbs":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;

    .line 169
    .local v0, "cb":Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;
    iget-object v3, p0, Lcyanogenmod/preference/RemotePreferenceManager$1$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v0, v3}, Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;->onRemoteUpdated(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 164
    .end local v0    # "cb":Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    .end local v2    # "cbs":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    .line 163
    return-void
.end method
