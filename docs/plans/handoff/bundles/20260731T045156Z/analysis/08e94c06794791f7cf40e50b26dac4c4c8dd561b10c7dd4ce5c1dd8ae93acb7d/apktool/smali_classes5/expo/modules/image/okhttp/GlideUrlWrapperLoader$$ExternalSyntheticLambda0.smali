.class public final synthetic Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic f$0:Lexpo/modules/image/okhttp/GlideUrlWrapper;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/image/okhttp/GlideUrlWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/image/okhttp/GlideUrlWrapper;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/image/okhttp/GlideUrlWrapper;

    invoke-static {v0, p1}, Lexpo/modules/image/okhttp/GlideUrlWrapperLoader;->$r8$lambda$juRaK0_CUlKQnqVa91yiYH2qPww(Lexpo/modules/image/okhttp/GlideUrlWrapper;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
