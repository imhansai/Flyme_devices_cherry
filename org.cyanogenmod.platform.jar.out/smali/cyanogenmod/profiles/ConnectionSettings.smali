.class public final Lcyanogenmod/profiles/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/ConnectionSettings$1;,
        Lcyanogenmod/profiles/ConnectionSettings$BooleanState;,
        Lcyanogenmod/profiles/ConnectionSettings$OnStartTetheringCallback;
    }
.end annotation


# static fields
.field private static final ACTION_MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field private static final CM_MODE_2G:I = 0x0

.field private static final CM_MODE_2G3G:I = 0x3

.field private static final CM_MODE_3G:I = 0x1

.field private static final CM_MODE_4G:I = 0x2

.field private static final CM_MODE_ALL:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field private static final EXTRA_SUB_ID:Ljava/lang/String; = "subId"

.field public static final PROFILE_CONNECTION_2G3G4G:I = 0x9

.field public static final PROFILE_CONNECTION_BLUETOOTH:I = 0x7

.field public static final PROFILE_CONNECTION_GPS:I = 0x4

.field public static final PROFILE_CONNECTION_MOBILEDATA:I = 0x0

.field public static final PROFILE_CONNECTION_NFC:I = 0x8

.field public static final PROFILE_CONNECTION_SYNC:I = 0x5

.field public static final PROFILE_CONNECTION_WIFI:I = 0x1

.field public static final PROFILE_CONNECTION_WIFIAP:I = 0x2

.field public static final PROFILE_CONNECTION_WIMAX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mSubId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/ConnectionSettings$1;-><init>()V

    .line 149
    sput-object v0, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0, v0}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 173
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "value"    # I
    .param p3, "override"    # Z

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 185
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 186
    iput p2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 187
    iput-boolean p3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 166
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 165
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 382
    .local v1, "event":I
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    .line 383
    .local v0, "connectionDescriptor":Lcyanogenmod/profiles/ConnectionSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "connectionDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    return-object v0

    .line 384
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 385
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "connectionId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 398
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 388
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    goto :goto_1

    .line 390
    :cond_3
    const-string/jumbo v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    goto :goto_1

    .line 392
    :cond_4
    const-string/jumbo v3, "subId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    goto :goto_1

    .line 395
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 396
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Premature end of file while parsing connection settings"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    const-string/jumbo v0, "<connectionDescriptor>\n<connectionId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string/jumbo v0, "</connectionId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string/jumbo v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 411
    const-string/jumbo v0, "</override>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    sget v0, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 413
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 414
    iget v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 415
    const-string/jumbo v0, "<subId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</subId>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    const-string/jumbo v0, "</connectionDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 254
    .local v4, "bta":Landroid/bluetooth/BluetoothAdapter;
    const-string/jumbo v19, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/LocationManager;

    .line 255
    .local v12, "lm":Landroid/location/LocationManager;
    const-string/jumbo v19, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 257
    .local v18, "wm":Landroid/net/wifi/WifiManager;
    const-string/jumbo v19, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 259
    .local v6, "cm":Landroid/net/ConnectivityManager;
    const-string/jumbo v19, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 258
    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 260
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    const/4 v13, 0x0

    .line 262
    .local v13, "nfcAdapter":Landroid/nfc/NfcAdapter;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 267
    .end local v13    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    .line 270
    .local v9, "forcedState":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 252
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    .line 263
    .end local v9    # "forcedState":Z
    .restart local v13    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 267
    .end local v8    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v13    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "forcedState":Z
    goto :goto_1

    .line 272
    :pswitch_1
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v7

    .line 273
    .local v7, "currentState":Z
    if-eq v9, v7, :cond_0

    .line 274
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v14

    .line 275
    .local v14, "phoneCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v14, :cond_0

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 277
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mobile_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-eqz v9, :cond_2

    const/16 v19, 0x1

    .line 276
    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v15

    .line 279
    .local v15, "subId":[I
    const/16 v19, 0x0

    aget v19, v15, v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 275
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 277
    .end local v15    # "subId":[I
    :cond_2
    const/16 v19, 0x0

    goto :goto_4

    .line 284
    .end local v7    # "currentState":Z
    .end local v10    # "i":I
    .end local v14    # "phoneCount":I
    :pswitch_2
    sget v19, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 285
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v19, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "networkMode"

    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const-string/jumbo v19, "subId"

    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string/jumbo v19, "com.android.phone.CHANGE_NETWORK_MODE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 290
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v19, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v11    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v19

    packed-switch v19, :pswitch_data_1

    .line 309
    return-void

    .line 293
    :pswitch_3
    const-string/jumbo v19, "networkMode"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 296
    :pswitch_4
    const-string/jumbo v19, "networkMode"

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 299
    :pswitch_5
    const-string/jumbo v19, "networkMode"

    const/16 v20, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 302
    :pswitch_6
    const-string/jumbo v19, "networkMode"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 305
    :pswitch_7
    const-string/jumbo v19, "networkMode"

    .line 306
    const/16 v20, 0x9

    .line 305
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 315
    .end local v11    # "intent":Landroid/content/Intent;
    :pswitch_8
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 316
    .local v5, "btstate":I
    if-eqz v9, :cond_5

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v5, v0, :cond_4

    .line 317
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v5, v0, :cond_5

    .line 318
    :cond_4
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_2

    .line 319
    :cond_5
    if-nez v9, :cond_0

    const/16 v19, 0xc

    move/from16 v0, v19

    if-eq v5, v0, :cond_6

    .line 320
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v5, v0, :cond_0

    .line 321
    :cond_6
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_2

    .line 325
    .end local v5    # "btstate":I
    :pswitch_9
    const-string/jumbo v19, "gps"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    .line 326
    .restart local v7    # "currentState":Z
    if-eq v7, v9, :cond_0

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 328
    const-string/jumbo v20, "gps"

    .line 327
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 332
    .end local v7    # "currentState":Z
    :pswitch_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    .line 333
    .restart local v7    # "currentState":Z
    if-eq v9, v7, :cond_0

    .line 334
    invoke-static {v9}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto/16 :goto_2

    .line 338
    .end local v7    # "currentState":Z
    :pswitch_b
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v17

    .line 339
    .local v17, "wifiApState":I
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    .line 340
    .restart local v7    # "currentState":Z
    if-eq v7, v9, :cond_0

    .line 342
    if-eqz v9, :cond_8

    const/16 v19, 0xc

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 344
    :goto_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 346
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 343
    :cond_8
    const/16 v19, 0xd

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    goto :goto_6

    .line 350
    .end local v7    # "currentState":Z
    .end local v17    # "wifiApState":I
    :pswitch_c
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    .line 351
    .restart local v7    # "currentState":Z
    if-eq v7, v9, :cond_0

    .line 353
    if-eqz v9, :cond_9

    .line 355
    new-instance v19, Lcyanogenmod/profiles/ConnectionSettings$OnStartTetheringCallback;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcyanogenmod/profiles/ConnectionSettings$OnStartTetheringCallback;-><init>(Lcyanogenmod/profiles/ConnectionSettings$OnStartTetheringCallback;)V

    .line 354
    const/16 v20, 0x0

    .line 355
    const/16 v21, 0x0

    .line 354
    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto/16 :goto_2

    .line 357
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto/16 :goto_2

    .line 362
    .end local v7    # "currentState":Z
    :pswitch_d
    if-eqz v13, :cond_0

    .line 363
    invoke-virtual {v13}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    .line 364
    .local v3, "adapterState":I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v3, v0, :cond_a

    .line 365
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_b

    const/4 v7, 0x1

    .line 366
    .restart local v7    # "currentState":Z
    :goto_7
    if-eq v7, v9, :cond_0

    .line 367
    if-eqz v9, :cond_c

    .line 368
    invoke-virtual {v13}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_2

    .line 364
    .end local v7    # "currentState":Z
    :cond_a
    const/4 v7, 0x1

    goto :goto_7

    .line 365
    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    .line 369
    .restart local v7    # "currentState":Z
    :cond_c
    if-nez v9, :cond_0

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    .line 370
    invoke-virtual {v13}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_2

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_d
        :pswitch_2
    .end packed-switch

    .line 291
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 450
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 451
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 456
    .local v1, "parcelableVersion":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 463
    :cond_0
    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 464
    iget v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 470
    :cond_1
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 448
    return-void

    :cond_2
    move v2, v4

    .line 458
    goto :goto_0

    :cond_3
    move v3, v4

    .line 460
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 220
    return-void
.end method

.method public setSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 226
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 225
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 212
    iput p1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    .line 211
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 430
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 433
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-boolean v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mOverride:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-boolean v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mDirty:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mConnectionId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 440
    iget v1, p0, Lcyanogenmod/profiles/ConnectionSettings;->mSubId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 428
    return-void

    :cond_1
    move v1, v3

    .line 434
    goto :goto_0

    :cond_2
    move v2, v3

    .line 436
    goto :goto_1
.end method
