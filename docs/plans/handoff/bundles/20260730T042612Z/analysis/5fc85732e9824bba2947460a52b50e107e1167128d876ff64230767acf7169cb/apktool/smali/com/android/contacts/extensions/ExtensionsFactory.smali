.class public Lcom/android/contacts/extensions/ExtensionsFactory;
.super Ljava/lang/Object;
.source "ExtensionsFactory.java"


# static fields
.field private static mExtendedPhoneDirectoriesManager:Lcom/android/contacts/extensions/ExtendedPhoneDirectoriesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getExtendedPhoneDirectoriesManager()Lcom/android/contacts/extensions/ExtendedPhoneDirectoriesManager;
    .locals 1

    .line 93
    sget-object v0, Lcom/android/contacts/extensions/ExtensionsFactory;->mExtendedPhoneDirectoriesManager:Lcom/android/contacts/extensions/ExtendedPhoneDirectoriesManager;

    return-object v0
.end method
