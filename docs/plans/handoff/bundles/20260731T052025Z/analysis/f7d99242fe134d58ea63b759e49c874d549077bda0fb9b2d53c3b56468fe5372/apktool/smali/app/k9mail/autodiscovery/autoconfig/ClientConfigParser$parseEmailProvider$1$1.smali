.class public final synthetic Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$parseEmailProvider$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$parseEmailProvider$1$1;->$r8$classId:I

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    move-object p4, p2

    .line 5
    move p2, p6

    .line 6
    move-object p6, p5

    .line 7
    move-object p5, v0

    .line 8
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser$parseEmailProvider$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lnet/thunderbird/core/common/net/Hostname;

    .line 7
    .line 8
    iget-object v1, p1, Lnet/thunderbird/core/common/net/Hostname;->value:Ljava/lang/String;

    .line 9
    .line 10
    check-cast p2, Lnet/thunderbird/core/common/net/Port;

    .line 11
    .line 12
    iget v2, p2, Lnet/thunderbird/core/common/net/Port;->value:I

    .line 13
    .line 14
    move-object v3, p3

    .line 15
    check-cast v3, Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 16
    .line 17
    move-object v4, p4

    .line 18
    check-cast v4, Ljava/util/List;

    .line 19
    .line 20
    move-object v5, p5

    .line 21
    check-cast v5, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v0, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 40
    .line 41
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;-><init>(Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Ljava/util/List;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_0
    check-cast p1, Lnet/thunderbird/core/common/net/Hostname;

    .line 46
    .line 47
    iget-object v1, p1, Lnet/thunderbird/core/common/net/Hostname;->value:Ljava/lang/String;

    .line 48
    .line 49
    check-cast p2, Lnet/thunderbird/core/common/net/Port;

    .line 50
    .line 51
    iget v2, p2, Lnet/thunderbird/core/common/net/Port;->value:I

    .line 52
    .line 53
    move-object v3, p3

    .line 54
    check-cast v3, Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 55
    .line 56
    move-object v4, p4

    .line 57
    check-cast v4, Ljava/util/List;

    .line 58
    .line 59
    move-object v5, p5

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v0, Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 79
    .line 80
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/autodiscovery/api/ImapServerSettings;-><init>(Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Ljava/util/List;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
