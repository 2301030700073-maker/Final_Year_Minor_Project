.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction;


# instance fields
.field public final actionLabel:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

.field public final descriptionStringRes:Lorg/jetbrains/compose/resources/StringResource;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;->actionLabel:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    sget-object p1, Lnet/thunderbird/core/ui/designsystem/resources/String0_commonMainKt;->designsystem_molecule_swipeable_row_end_to_start_accessibility_description$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lorg/jetbrains/compose/resources/StringResource;

    .line 13
    .line 14
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;->descriptionStringRes:Lorg/jetbrains/compose/resources/StringResource;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;->actionLabel:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    iget-object p1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;->actionLabel:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final getActionLabel()Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;->actionLabel:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDescriptionStringRes()Lorg/jetbrains/compose/resources/StringResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;->descriptionStringRes:Lorg/jetbrains/compose/resources/StringResource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;->actionLabel:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EndToStartAccessibilityAction(actionLabel="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirectionAccessibilityAction$EndToStartAccessibilityAction;->actionLabel:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityStateKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
