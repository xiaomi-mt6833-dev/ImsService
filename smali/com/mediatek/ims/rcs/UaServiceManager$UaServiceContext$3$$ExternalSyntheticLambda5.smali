.class public final synthetic Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;

.field public final synthetic f$1:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;->f$1:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iput p3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;->f$1:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    iget v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->lambda$onStatusChanged$2$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    return-void
.end method
