.class public abstract Lcom/evernote/android/state/Injector$View;
.super Lcom/evernote/android/state/Injector;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/state/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/evernote/android/state/Injector;"
    }
.end annotation


# static fields
.field static final DEFAULT:Lcom/evernote/android/state/Injector$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evernote/android/state/Injector$View<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/evernote/android/state/Injector$View$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/evernote/android/state/Injector$View$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/evernote/android/state/Injector$View;->DEFAULT:Lcom/evernote/android/state/Injector$View;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/evernote/android/state/Injector;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract restore(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation
.end method

.method public abstract save(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation
.end method
