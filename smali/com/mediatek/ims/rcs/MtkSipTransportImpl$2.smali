.class Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;
.super Ljava/lang/Object;
.source "MtkSipTransportImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->notifyProvisioningChanged(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

.field final synthetic val$feature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;->val$feature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$200(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;->val$feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$200(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;->val$feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/Capability;->add(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;

    .line 306
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->updateSipDelegateRegistration()V

    .line 308
    :cond_0
    return-void
.end method
