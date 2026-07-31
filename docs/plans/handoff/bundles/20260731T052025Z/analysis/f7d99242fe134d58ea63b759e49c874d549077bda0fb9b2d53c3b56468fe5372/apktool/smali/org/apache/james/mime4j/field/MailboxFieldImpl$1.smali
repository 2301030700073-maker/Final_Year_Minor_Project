.class public final Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/dom/FieldParser;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final parse(Lorg/apache/james/mime4j/stream/Field;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 1

    .line 1
    iget p0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_1
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_2
    new-instance p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;

    .line 31
    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_3
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 42
    .line 43
    const/16 v0, 0x8

    .line 44
    .line 45
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_4
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 55
    .line 56
    const/16 v0, 0x8

    .line 57
    .line 58
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_5
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 63
    .line 64
    const/16 v0, 0x8

    .line 65
    .line 66
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_6
    new-instance p0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;

    .line 71
    .line 72
    const/16 v0, 0x8

    .line 73
    .line 74
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_7
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 79
    .line 80
    const/16 v0, 0x8

    .line 81
    .line 82
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_8
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 87
    .line 88
    const/16 v0, 0x8

    .line 89
    .line 90
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :pswitch_9
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 95
    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_a
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 103
    .line 104
    const/16 v0, 0x8

    .line 105
    .line 106
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_b
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 116
    .line 117
    const/16 v0, 0x8

    .line 118
    .line 119
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_c
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 124
    .line 125
    const/16 v0, 0x8

    .line 126
    .line 127
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_d
    new-instance p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;

    .line 132
    .line 133
    const/16 v0, 0x8

    .line 134
    .line 135
    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "ContentTypeFieldImpl.PARSER"

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
