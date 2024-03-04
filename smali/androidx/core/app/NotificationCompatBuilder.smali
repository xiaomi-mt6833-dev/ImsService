.class Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Landroidx/core/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompatBuilder$Api26Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api23Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api16Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api17Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api20Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api21Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api19Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api24Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api28Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api29Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api31Impl;
    }
.end annotation


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private final mBuilder:Landroid/app/Notification$Builder;

.field private final mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mContext:Landroid/content/Context;

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 13
    .param p1, "b"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 75
    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 76
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    .line 77
    nop

    .line 78
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->createBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 82
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 83
    .local v2, "n":Landroid/app/Notification;
    iget-wide v3, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->icon:I

    iget v5, v2, Landroid/app/Notification;->iconLevel:I

    .line 84
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 85
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroidx/core/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 86
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->vibrate:[J

    .line 87
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->ledARGB:I

    iget v5, v2, Landroid/app/Notification;->ledOnMS:I

    iget v6, v2, Landroid/app/Notification;->ledOffMS:I

    .line 88
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    .line 89
    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    .line 90
    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v7

    .line 91
    :goto_2
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->defaults:I

    .line 92
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 96
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 97
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iget v8, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_3

    :cond_3
    move v8, v7

    .line 98
    :goto_3
    invoke-virtual {v3, v4, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 100
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    iget v8, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    iget-boolean v9, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 101
    invoke-virtual {v3, v4, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 102
    nop

    .line 105
    nop

    .line 106
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move-object v0, v4

    goto :goto_4

    :cond_4
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v3, v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 105
    :goto_4
    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompatBuilder$Api23Impl;->setLargeIcon(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 108
    nop

    .line 111
    nop

    .line 112
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 113
    invoke-static {v1, v0}, Landroidx/core/app/NotificationCompatBuilder$Api16Impl;->setSubText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api16Impl;->setUsesChronometer(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 112
    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api16Impl;->setPriority(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 115
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/NotificationCompat$Action;

    .line 116
    .local v1, "action":Landroidx/core/app/NotificationCompat$Action;
    invoke-direct {p0, v1}, Landroidx/core/app/NotificationCompatBuilder;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 117
    .end local v1    # "action":Landroidx/core/app/NotificationCompat$Action;
    goto :goto_5

    .line 119
    :cond_5
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 120
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 122
    :cond_6
    nop

    .line 140
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 141
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 143
    nop

    .line 144
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api17Impl;->setShowWhen(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 146
    nop

    .line 147
    nop

    .line 155
    nop

    .line 156
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setLocalOnly(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 157
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setGroup(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 158
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setSortKey(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 159
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setGroupSummary(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 160
    iget v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    iput v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 162
    nop

    .line 163
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setCategory(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 164
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setColor(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 165
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setVisibility(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 166
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setPublicVersion(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 167
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->setSound(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 170
    nop

    .line 173
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 175
    .local v0, "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 177
    .local v3, "person":Ljava/lang/String;
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v3}, Landroidx/core/app/NotificationCompatBuilder$Api21Impl;->addPerson(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 178
    .end local v3    # "person":Ljava/lang/String;
    goto :goto_6

    .line 181
    :cond_7
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 183
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 186
    nop

    .line 187
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 188
    .local v1, "carExtenderBundle":Landroid/os/Bundle;
    if-nez v1, :cond_8

    .line 189
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v1, v8

    .line 191
    :cond_8
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 192
    .local v8, "extenderBundleCopy":Landroid/os/Bundle;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v9, "listBundle":Landroid/os/Bundle;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    iget-object v11, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 194
    nop

    .line 195
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/core/app/NotificationCompat$Action;

    .line 196
    invoke-static {v12}, Landroidx/core/app/NotificationCompatJellybean;->getBundleForAction(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v12

    .line 194
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 199
    .end local v10    # "i":I
    :cond_9
    const-string v10, "invisible_actions"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 205
    iget-object v10, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v10, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 209
    .end local v0    # "people":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "carExtenderBundle":Landroid/os/Bundle;
    .end local v8    # "extenderBundleCopy":Landroid/os/Bundle;
    .end local v9    # "listBundle":Landroid/os/Bundle;
    :cond_a
    nop

    .line 210
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api23Impl;->setSmallIcon(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 214
    :cond_b
    nop

    .line 215
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api19Impl;->setExtras(Landroid/app/Notification$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 216
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setRemoteInputHistory(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 217
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_c

    .line 218
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setCustomContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 220
    :cond_c
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_d

    .line 221
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setCustomBigContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 223
    :cond_d
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_e

    .line 224
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setCustomHeadsUpContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 227
    :cond_e
    nop

    .line 228
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setBadgeIconType(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 229
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setSettingsText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 230
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setShortcutId(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 231
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-wide v8, p1, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    invoke-static {v0, v8, v9}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setTimeoutAfter(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 232
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 233
    iget-boolean v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    if-eqz v0, :cond_f

    .line 234
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setColorized(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 237
    :cond_f
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 238
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 244
    :cond_10
    nop

    .line 245
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/Person;

    .line 246
    .local v1, "p":Landroidx/core/app/Person;
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v7

    invoke-static {v3, v7}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->addPerson(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 247
    .end local v1    # "p":Landroidx/core/app/Person;
    goto :goto_8

    .line 249
    :cond_11
    nop

    .line 250
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setAllowSystemGeneratedContextualActions(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 253
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 254
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setBubbleMetadata(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 255
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    if-eqz v0, :cond_12

    .line 256
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    invoke-virtual {v1}, Landroidx/core/content/LocusIdCompat;->toLocusId()Landroid/content/LocusId;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setLocusId(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    .line 259
    :cond_12
    nop

    .line 260
    iget v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    if-eqz v0, :cond_13

    .line 261
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->setForegroundServiceBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 265
    :cond_13
    iget-boolean v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    if-eqz v0, :cond_16

    .line 266
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    if-eqz v0, :cond_14

    .line 267
    iput v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    goto :goto_9

    .line 269
    :cond_14
    iput v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 272
    :goto_9
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 273
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 274
    iget v0, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 275
    iget v0, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 276
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 278
    nop

    .line 279
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 280
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    const-string v1, "silent"

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->setGroup(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 282
    :cond_15
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->setGroupAlertBehavior(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 285
    :cond_16
    return-void
.end method

.method private addAction(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 6
    .param p1, "action"    # Landroidx/core/app/NotificationCompat$Action;

    .line 363
    nop

    .line 365
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 366
    .local v0, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    nop

    .line 368
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 369
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 367
    invoke-static {v1, v2, v3}, Landroidx/core/app/NotificationCompatBuilder$Api23Impl;->createBuilder(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    .line 375
    .local v1, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 376
    nop

    .line 377
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v2

    .line 376
    invoke-static {v2}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 378
    .local v5, "remoteInput":Landroid/app/RemoteInput;
    invoke-static {v1, v5}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->addRemoteInput(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 376
    .end local v5    # "remoteInput":Landroid/app/RemoteInput;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 383
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .local v2, "actionExtras":Landroid/os/Bundle;
    goto :goto_2

    .line 385
    .end local v2    # "actionExtras":Landroid/os/Bundle;
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 387
    .restart local v2    # "actionExtras":Landroid/os/Bundle;
    :goto_2
    nop

    .line 388
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 387
    const-string v4, "android.support.allowGeneratedReplies"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 389
    nop

    .line 390
    nop

    .line 391
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 390
    invoke-static {v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 394
    nop

    .line 395
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v3

    .line 394
    const-string v4, "android.support.action.semanticAction"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    nop

    .line 397
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->setSemanticAction(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 400
    nop

    .line 401
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v3

    invoke-static {v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->setContextual(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 404
    nop

    .line 405
    nop

    .line 406
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isAuthenticationRequired()Z

    move-result v3

    .line 405
    invoke-static {v1, v3}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->setAuthenticationRequired(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 409
    nop

    .line 410
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getShowsUserInterface()Z

    move-result v3

    .line 409
    const-string v4, "android.support.action.showsUserInterface"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    invoke-static {v1, v2}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->addExtras(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 412
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->build(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/app/NotificationCompatBuilder$Api20Impl;->addAction(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 413
    .end local v0    # "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    .end local v1    # "actionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v2    # "actionExtras":Landroid/os/Bundle;
    nop

    .line 417
    return-void
.end method

.method private static combineLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    .local p0, "first":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "second":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 291
    return-object p1

    .line 293
    :cond_0
    if-nez p1, :cond_1

    .line 294
    return-object p0

    .line 296
    :cond_1
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 297
    .local v0, "people":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 298
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private static getPeople(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/Person;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    .local p0, "people":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/Person;>;"
    if-nez p0, :cond_0

    .line 305
    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/Person;

    .line 309
    .local v2, "person":Landroidx/core/app/Person;
    invoke-virtual {v2}, Landroidx/core/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v2    # "person":Landroidx/core/app/Person;
    goto :goto_0

    .line 311
    :cond_1
    return-object v0
.end method

.method private removeSoundAndVibration(Landroid/app/Notification;)V
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;

    .line 545
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 546
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 547
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 548
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 549
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 4

    .line 324
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 325
    .local v0, "style":Landroidx/core/app/NotificationCompat$Style;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 329
    :cond_0
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    .line 331
    :cond_1
    const/4 v1, 0x0

    :goto_0
    nop

    .line 332
    .local v1, "styleContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->buildInternal()Landroid/app/Notification;

    move-result-object v2

    .line 333
    .local v2, "n":Landroid/app/Notification;
    if-eqz v1, :cond_2

    .line 334
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 335
    :cond_2
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_3

    .line 336
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 338
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 339
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 340
    .local v3, "styleBigContentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_4

    .line 341
    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 344
    .end local v3    # "styleBigContentView":Landroid/widget/RemoteViews;
    :cond_4
    if-eqz v0, :cond_5

    .line 345
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 346
    invoke-virtual {v3, p0}, Landroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 347
    .local v3, "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_5

    .line 348
    iput-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 352
    .end local v3    # "styleHeadsUpContentView":Landroid/widget/RemoteViews;
    :cond_5
    if-eqz v0, :cond_6

    .line 353
    invoke-static {v2}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    .line 354
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_6

    .line 355
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 359
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_6
    return-object v2
.end method

.method protected buildInternal()Landroid/app/Notification;
    .locals 1

    .line 421
    nop

    .line 422
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroidx/core/app/NotificationCompatBuilder$Api16Impl;->build(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 1

    .line 316
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 320
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method
