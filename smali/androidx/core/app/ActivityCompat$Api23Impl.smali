.class Landroidx/core/app/ActivityCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    return-void
.end method

.method static onSharedElementsReady(Ljava/lang/Object;)V
    .locals 1
    .param p0, "onSharedElementsReadyListener"    # Ljava/lang/Object;

    .line 952
    move-object v0, p0

    check-cast v0, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    .line 953
    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 954
    return-void
.end method

.method static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 942
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 943
    return-void
.end method

.method static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .line 947
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
