.class Lcom/redshift/rs_vapourtraining/NavigationComponent$2;
.super Ljava/lang/Object;
.source "NavigationComponent.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/NavigationComponent;->getServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/NavigationComponent;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/NavigationComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/NavigationComponent;

    .line 132
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent$2;->this$0:Lcom/redshift/rs_vapourtraining/NavigationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/redshift/rs_vapourtraining/NavigationComponent$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .line 136
    return-void
.end method
