.class final Lcom/android/contacts/editor/KindSectionView$OtherNameKindEditorListener;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/KindSectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OtherNameKindEditorListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/KindSectionView$1;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView$OtherNameKindEditorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0

    .line 100
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->clearAllFields()V

    return-void
.end method

.method public onRequest(I)V
    .locals 0

    return-void
.end method
