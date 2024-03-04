.class final Landroidx/core/app/ActivityRecreator;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityRecreator"

.field protected static final activityThreadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mainHandler:Landroid/os/Handler;

.field protected static final mainThreadField:Ljava/lang/reflect/Field;

.field protected static final performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

.field protected static final requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

.field protected static final tokenField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    .line 93
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->activityThreadClass:Ljava/lang/Class;

    .line 94
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getMainThreadField()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    .line 95
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->getTokenField()Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    .line 96
    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity3ParamsMethod:Ljava/lang/reflect/Method;

    .line 97
    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/app/ActivityRecreator;->performStopActivity2ParamsMethod:Ljava/lang/reflect/Method;

    .line 98
    invoke-static {v0}, Landroidx/core/app/ActivityRecreator;->getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/ActivityRecreator;->requestRelaunchActivityMethod:Ljava/lang/reflect/Method;

    .line 99
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityThreadClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 377
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMainThreadField()Ljava/lang/reflect/Field;
    .locals 2

    .line 357
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 358
    .local v0, "mainThreadField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    return-object v0

    .line 360
    .end local v0    # "mainThreadField":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v0

    .line 361
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getPerformStopActivity2Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 315
    .local p0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 316
    return-object v0

    .line 319
    :cond_0
    :try_start_0
    const-string v1, "performStopActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 321
    .local v1, "performStop":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    return-object v1

    .line 323
    .end local v1    # "performStop":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 324
    .local v1, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static getPerformStopActivity3Params(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 301
    .local p0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 302
    return-object v0

    .line 305
    :cond_0
    :try_start_0
    const-string v1, "performStopActivity"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 307
    .local v1, "performStop":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    return-object v1

    .line 309
    .end local v1    # "performStop":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 310
    .local v1, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static getRequestRelaunchActivityMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 333
    .local p0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Landroidx/core/app/ActivityRecreator;->needsRelaunchCall()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    :try_start_0
    const-string v0, "requestRelaunchActivity"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/util/List;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Ljava/util/List;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const-class v3, Landroid/content/res/Configuration;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    const-class v3, Landroid/content/res/Configuration;

    const/4 v5, 0x6

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x7

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v5, 0x8

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 348
    .local v0, "relaunch":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    return-object v0

    .line 350
    .end local v0    # "relaunch":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    .line 351
    .local v0, "t":Ljava/lang/Throwable;
    return-object v1

    .line 334
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static getTokenField()Ljava/lang/reflect/Field;
    .locals 2

    .line 367
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 368
    .local v0, "tokenField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    return-object v0

    .line 370
    .end local v0    # "tokenField":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v0

    .line 371
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static needsRelaunchCall()Z
    .locals 1

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method protected static queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .locals 5
    .param p0, "currentlyRecreatingToken"    # Ljava/lang/Object;
    .param p1, "currentlyRecreatingHashCode"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .line 256
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/core/app/ActivityRecreator;->tokenField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "token":Ljava/lang/Object;
    if-ne v1, p0, :cond_1

    .line 258
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    sget-object v2, Landroidx/core/app/ActivityRecreator;->mainThreadField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 268
    .local v2, "activityThread":Ljava/lang/Object;
    sget-object v3, Landroidx/core/app/ActivityRecreator;->mainHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/app/ActivityRecreator$3;

    invoke-direct {v4, v2, v1}, Landroidx/core/app/ActivityRecreator$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const/4 v0, 0x1

    return v0

    .line 262
    .end local v2    # "activityThread":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v0

    .line 294
    .end local v1    # "token":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 295
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ActivityRecreator"

    const-string v3, "Exception while fetching field values"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    return v0
.end method

.method static recreate(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
