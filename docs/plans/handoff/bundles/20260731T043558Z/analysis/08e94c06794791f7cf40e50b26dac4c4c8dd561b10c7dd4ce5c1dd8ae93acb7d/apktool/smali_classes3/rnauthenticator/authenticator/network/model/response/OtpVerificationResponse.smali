.class public final Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;
.super Ljava/lang/Object;
.source "OtpVerificationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$$serializer;,
        Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u0000 #2\u00020\u0001:\u0002\"#B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B9\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J%\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0001\u00a2\u0006\u0002\u0008!R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006$"
    }
    d2 = {
        "Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;",
        "",
        "status",
        "",
        "recipient",
        "recipient_id",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getStatus",
        "()Ljava/lang/String;",
        "getRecipient",
        "getRecipient_id",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$propertyguru_react_native_authenticator_release",
        "$serializer",
        "Companion",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$Companion;


# instance fields
.field private final recipient:Ljava/lang/String;

.field private final recipient_id:Ljava/lang/String;

.field private final status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 3
    sget-object p5, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$$serializer;->INSTANCE:Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$$serializer;

    invoke-virtual {p5}, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    iput-object p3, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    iput-object p4, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object p0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipient_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;

    invoke-direct {v0, p1, p2, p3}, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;

    iget-object v1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    iget-object v3, p1, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    iget-object v3, p1, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    iget-object p1, p1, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getRecipient()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipient_id()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->status:Ljava/lang/String;

    iget-object v1, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient:Ljava/lang/String;

    iget-object v2, p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->recipient_id:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OtpVerificationResponse(status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", recipient="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recipient_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
