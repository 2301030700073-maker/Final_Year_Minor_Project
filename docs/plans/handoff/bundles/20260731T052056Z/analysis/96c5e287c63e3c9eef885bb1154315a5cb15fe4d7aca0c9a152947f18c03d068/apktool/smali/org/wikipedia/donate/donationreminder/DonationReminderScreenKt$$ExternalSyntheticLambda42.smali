.class public final synthetic Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/wikipedia/donate/donationreminder/SelectableOption;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/wikipedia/donate/donationreminder/SelectableOption;ILkotlin/jvm/functions/Function1;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$1:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$3:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$4:Z

    .line 13
    .line 14
    iput p6, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$5:I

    .line 15
    .line 16
    iput p7, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$5:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-object v0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$0:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$1:Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 20
    .line 21
    iget v2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$2:I

    .line 22
    .line 23
    iget-object v3, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$3:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iget-boolean v4, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$4:Z

    .line 26
    .line 27
    iget v7, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda42;->f$6:I

    .line 28
    .line 29
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt;->OptionSelector(Ljava/lang/String;Lorg/wikipedia/donate/donationreminder/SelectableOption;ILkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/GapComposer;II)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
