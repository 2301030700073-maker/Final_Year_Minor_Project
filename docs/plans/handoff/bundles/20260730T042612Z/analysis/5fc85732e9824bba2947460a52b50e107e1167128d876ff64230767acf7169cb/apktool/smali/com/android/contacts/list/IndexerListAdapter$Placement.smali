.class public final Lcom/android/contacts/list/IndexerListAdapter$Placement;
.super Ljava/lang/Object;
.source "IndexerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/IndexerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field public firstInSection:Z

.field public lastInSection:Z

.field private position:I

.field public sectionHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/android/contacts/list/IndexerListAdapter$Placement;->position:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/IndexerListAdapter$Placement;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/contacts/list/IndexerListAdapter$Placement;->position:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/contacts/list/IndexerListAdapter$Placement;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/contacts/list/IndexerListAdapter$Placement;->position:I

    return p1
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/android/contacts/list/IndexerListAdapter$Placement;->position:I

    return-void
.end method
