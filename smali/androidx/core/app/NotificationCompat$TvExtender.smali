.class public final Landroidx/core/app/NotificationCompat$TvExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvExtender"
.end annotation


# static fields
.field static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field static final EXTRA_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field static final EXTRA_DELETE_INTENT:Ljava/lang/String; = "delete_intent"

.field private static final EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field static final EXTRA_SUPPRESS_SHOW_OVER_APPS:Ljava/lang/String; = "suppressShowOverApps"

.field static final EXTRA_TV_EXTENDER:Ljava/lang/String; = "android.tv.EXTENSIONS"

.field private static final FLAG_AVAILABLE_ON_TV:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TvExtender"


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mSuppressShowOverApps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8487
    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    .line 8488
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notif"    # Landroid/app/Notification;

    .line 8495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8499
    nop

    .line 8503
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 8504
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.tv.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 8505
    .local v0, "tvBundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_1

    .line 8506
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    .line 8507
    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    .line 8508
    const-string v1, "suppressShowOverApps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    .line 8509
    const-string v1, "content_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 8510
    const-string v1, "delete_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 8512
    :cond_1
    return-void
.end method


# virtual methods
.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 8526
    nop

    .line 8530
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8532
    .local v0, "tvExtensions":Landroid/os/Bundle;
    const-string v1, "flags"

    iget v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8533
    const-string v1, "channel_id"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8534
    const-string v1, "suppressShowOverApps"

    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8535
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 8536
    const-string v2, "content_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8539
    :cond_0
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 8540
    const-string v2, "delete_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8544
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.tv.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8545
    return-object p1
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 8573
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 8593
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 8613
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public isAvailableOnTv()Z
    .locals 2

    .line 8553
    iget v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSuppressShowOverApps()Z
    .locals 1

    .line 8630
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    return v0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 8565
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mChannelId:Ljava/lang/String;

    .line 8566
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 8582
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 8583
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 8602
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 8603
    return-object p0
.end method

.method public setSuppressShowOverApps(Z)Landroidx/core/app/NotificationCompat$TvExtender;
    .locals 0
    .param p1, "suppress"    # Z

    .line 8621
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$TvExtender;->mSuppressShowOverApps:Z

    .line 8622
    return-object p0
.end method
