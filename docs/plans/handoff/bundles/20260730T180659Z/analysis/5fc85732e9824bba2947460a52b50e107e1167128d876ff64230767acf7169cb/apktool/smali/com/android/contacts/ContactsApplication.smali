.class public Lcom/android/contacts/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsApplication$DelayedInitializer;
    }
.end annotation


# static fields
.field private static final ENABLE_FRAGMENT_LOG:Z = false

.field private static final ENABLE_LOADER_LOG:Z = false

.field public static final STRICT_MODE_TAG:Ljava/lang/String; = "ContactsStrictMode"

.field private static sInjectedServices:Lcom/android/contacts/testing/InjectedServices;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInjectedServices()Lcom/android/contacts/testing/InjectedServices;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/testing/InjectedServices;

    return-object v0
.end method

.method public static injectServices(Lcom/android/contacts/testing/InjectedServices;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/testing/InjectedServices;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/testing/InjectedServices;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/android/contacts/testing/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 74
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/testing/InjectedServices;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/android/contacts/testing/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 86
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/testing/InjectedServices;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Lcom/android/contacts/testing/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 98
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "ContactsPerf"

    const/4 v1, 0x3

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContactsApplication.onCreate start"

    .line 101
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "ContactsStrictMode"

    .line 107
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 109
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 114
    :cond_1
    new-instance v2, Lcom/android/contacts/ContactsApplication$DelayedInitializer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;-><init>(Lcom/android/contacts/ContactsApplication;Lcom/android/contacts/ContactsApplication$1;)V

    invoke-virtual {v2}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->execute()V

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ContactsApplication.onCreate finish"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    invoke-static {p0}, Lcom/android/contactsbind/analytics/AnalyticsUtil;->initialize(Landroid/app/Application;)V

    return-void
.end method
