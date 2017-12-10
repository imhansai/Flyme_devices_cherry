.class Lcyanogenmod/preference/SettingsHelper$Observatory;
.super Landroid/database/ContentObserver;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/preference/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Observatory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 172
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 165
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mTriggers:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mRefs:Ljava/util/List;

    .line 173
    iput-object p1, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mContext:Landroid/content/Context;

    .line 174
    iget-object v0, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mResolver:Landroid/content/ContentResolver;

    .line 171
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 211
    iget-object v6, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mRefs:Ljava/util/List;

    monitor-enter v6

    .line 212
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 214
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 215
    .local v4, "notify":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;>;"
    iget-object v5, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mTriggers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;Ljava/util/Set<Landroid/net/Uri;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;Ljava/util/Set<Landroid/net/Uri;>;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "notify":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 221
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "notify":Ljava/util/Set;, "Ljava/util/Set<Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;

    .line 222
    .local v2, "listener":Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;
    invoke-interface {v2, p2}, Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;->onSettingsChanged(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v2    # "listener":Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;
    :cond_2
    monitor-exit v6

    .line 210
    return-void
.end method

.method public varargs register(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V
    .locals 7
    .param p1, "listener"    # Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;
    .param p2, "contentUris"    # [Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mRefs:Ljava/util/List;

    monitor-enter v3

    .line 179
    :try_start_0
    iget-object v4, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mTriggers:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 180
    .local v1, "uris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    if-nez v1, :cond_0

    .line 181
    new-instance v1, Landroid/util/ArraySet;

    .end local v1    # "uris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 182
    .restart local v1    # "uris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    iget-object v4, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mTriggers:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    array-length v4, p2

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, p2, v2

    .line 185
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v5, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mRefs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    iget-object v5, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;->onSettingsChanged(Landroid/net/Uri;)V

    .line 190
    :cond_1
    iget-object v5, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mRefs:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_2
    monitor-exit v3

    .line 177
    return-void

    .line 178
    .end local v1    # "uris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregister(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;)V
    .locals 5
    .param p1, "listener"    # Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;

    .prologue
    .line 196
    iget-object v4, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mRefs:Ljava/util/List;

    monitor-enter v4

    .line 197
    :try_start_0
    iget-object v3, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mTriggers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 198
    .local v2, "uris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 200
    .local v0, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mRefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "uri$iterator":Ljava/util/Iterator;
    .end local v2    # "uris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 203
    .restart local v2    # "uris":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mRefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 204
    iget-object v3, p0, Lcyanogenmod/preference/SettingsHelper$Observatory;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 195
    return-void
.end method
