.class public interface abstract Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;
.super Ljava/lang/Object;
.source "AccountsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/AccountsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccountsListener"
.end annotation


# virtual methods
.method public abstract onAccountsLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation
.end method
