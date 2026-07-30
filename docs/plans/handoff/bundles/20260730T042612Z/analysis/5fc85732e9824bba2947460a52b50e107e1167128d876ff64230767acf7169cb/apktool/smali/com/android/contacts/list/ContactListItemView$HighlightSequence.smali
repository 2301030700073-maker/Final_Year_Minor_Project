.class public Lcom/android/contacts/list/ContactListItemView$HighlightSequence;
.super Ljava/lang/Object;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HighlightSequence"
.end annotation


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;->start:I

    .line 126
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;->end:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactListItemView$HighlightSequence;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;->start:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactListItemView$HighlightSequence;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/contacts/list/ContactListItemView$HighlightSequence;->end:I

    return p0
.end method
