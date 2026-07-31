.class Lcom/redshift/rs_vapourtraining/NavigationComponent$3;
.super Ljava/lang/Object;
.source "NavigationComponent.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/NavigationComponent;->getServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/NavigationComponent;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/NavigationComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/NavigationComponent;

    .line 137
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/NavigationComponent$3;->this$0:Lcom/redshift/rs_vapourtraining/NavigationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 141
    return-void
.end method
