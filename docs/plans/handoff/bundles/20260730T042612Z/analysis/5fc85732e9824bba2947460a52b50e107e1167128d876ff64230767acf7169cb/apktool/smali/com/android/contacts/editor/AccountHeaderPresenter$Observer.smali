.class public interface abstract Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;
.super Ljava/lang/Object;
.source "AccountHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/AccountHeaderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# static fields
.field public static final NONE:Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/contacts/editor/AccountHeaderPresenter$Observer$1;

    invoke-direct {v0}, Lcom/android/contacts/editor/AccountHeaderPresenter$Observer$1;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;->NONE:Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;

    return-void
.end method


# virtual methods
.method public abstract onChange(Lcom/android/contacts/editor/AccountHeaderPresenter;)V
.end method
