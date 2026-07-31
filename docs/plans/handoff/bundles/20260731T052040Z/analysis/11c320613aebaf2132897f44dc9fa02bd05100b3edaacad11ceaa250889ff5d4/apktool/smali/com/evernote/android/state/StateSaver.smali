.class public final Lcom/evernote/android/state/StateSaver;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final ANDROID_PREFIX:Ljava/lang/String; = "android."

.field private static final IMPL:Lcom/evernote/android/state/StateSaverImpl;

.field public static final JAVA_PREFIX:Ljava/lang/String; = "java."

.field public static final SUFFIX:Ljava/lang/String; = "$$StateSaver"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/evernote/android/state/StateSaverImpl;

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/evernote/android/state/StateSaverImpl;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/evernote/android/state/StateSaver;->IMPL:Lcom/evernote/android/state/StateSaverImpl;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static restoreInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/evernote/android/state/StateSaver;->IMPL:Lcom/evernote/android/state/StateSaverImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/evernote/android/state/StateSaverImpl;->restoreInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/evernote/android/state/StateSaver;->IMPL:Lcom/evernote/android/state/StateSaverImpl;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/android/state/StateSaverImpl;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public static saveInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/evernote/android/state/StateSaver;->IMPL:Lcom/evernote/android/state/StateSaverImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/evernote/android/state/StateSaverImpl;->saveInstanceState(Landroid/view/View;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/evernote/android/state/StateSaver;->IMPL:Lcom/evernote/android/state/StateSaverImpl;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/android/state/StateSaverImpl;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setEnabledForAllActivitiesAndSupportFragments(Landroid/app/Application;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/evernote/android/state/StateSaver;->IMPL:Lcom/evernote/android/state/StateSaverImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/evernote/android/state/StateSaverImpl;->setEnabledForAllActivitiesAndSupportFragments(Landroid/app/Application;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
