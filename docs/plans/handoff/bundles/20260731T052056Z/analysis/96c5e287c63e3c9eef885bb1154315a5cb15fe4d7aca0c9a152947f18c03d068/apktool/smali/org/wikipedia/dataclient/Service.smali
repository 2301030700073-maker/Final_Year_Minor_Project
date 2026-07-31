.class public interface abstract Lorg/wikipedia/dataclient/Service;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J2\u0010\u0008\u001a\u00020\u00072\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00042\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00a2\u0006\u0004\u0008\u0008\u0010\tJ8\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n2\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00042\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00a2\u0006\u0004\u0008\u000b\u0010\tJ2\u0010\u000e\u001a\u00020\u00072\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00a2\u0006\u0004\u0008\u000e\u0010\tJD\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n2\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u00a7@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J$\u0010\u0014\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J0\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00a2\u0006\u0004\u0008\u0016\u0010\tJ0\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00a2\u0006\u0004\u0008\u0017\u0010\tJP\u0010\u001b\u001a\u00020\u00072\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u00042\n\u0008\u0003\u0010\r\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0003\u0010\u0019\u001a\u00020\u00042\u0008\u0008\u0003\u0010\u001a\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u001dH\u00a7@\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001a\u0010!\u001a\u00020\u00072\u0008\u0008\u0001\u0010 \u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008!\u0010\"J(\u0010%\u001a\u00020\u00072\n\u0008\u0003\u0010#\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010$\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008%\u0010&J\u001c\u0010\'\u001a\u00020\u00072\n\u0008\u0003\u0010$\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008\'\u0010\"J\u001c\u0010(\u001a\u00020\u00072\n\u0008\u0003\u0010$\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008(\u0010\"J\u001a\u0010)\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008)\u0010\"J$\u0010+\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u00022\u0008\u0008\u0001\u0010*\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008+\u0010&J$\u0010,\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u00022\u0008\u0008\u0001\u0010*\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008,\u0010&J.\u0010/\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u00022\u0008\u0008\u0001\u0010-\u001a\u00020\u00022\u0008\u0008\u0001\u0010.\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008/\u00100J\u001a\u00101\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u00081\u0010\"J\u001a\u00102\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u00082\u0010\"J\u0010\u00104\u001a\u000203H\u00a7@\u00a2\u0006\u0004\u00084\u0010\u001fJ@\u00108\u001a\u00020\u00072\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u00105\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u00106\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u00107\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u00088\u00109J\u0010\u0010:\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0004\u0008:\u0010\u001fJ\u0010\u0010;\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0004\u0008;\u0010\u001fJ\u001a\u0010>\u001a\u00020=2\u0008\u0008\u0001\u0010<\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008>\u0010\"J\u001a\u0010@\u001a\u00020=2\u0008\u0008\u0001\u0010?\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008@\u0010\"J\u001a\u0010B\u001a\u00020=2\u0008\u0008\u0001\u0010A\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008B\u0010\"J\u001a\u0010C\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008C\u0010\"J\u001a\u0010D\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008D\u0010\"J:\u0010H\u001a\u00020\u00072\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\u0008\u0008\u0001\u0010E\u001a\u00020\u00022\u0008\u0008\u0001\u0010F\u001a\u00020\u00042\n\u0008\u0001\u0010G\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008H\u0010IJ\u001a\u0010J\u001a\u00020\u00072\u0008\u0008\u0003\u0010F\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0004\u0008J\u0010KJ\u001a\u0010L\u001a\u00020\u00072\u0008\u0008\u0003\u0010F\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0004\u0008L\u0010KJ\u001a\u0010M\u001a\u00020\u00072\u0008\u0008\u0003\u0010F\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0004\u0008M\u0010KJT\u0010R\u001a\u00020\u00072\u0008\u0008\u0001\u0010F\u001a\u00020\u00042\u0008\u0008\u0001\u0010N\u001a\u00020\u00022\n\u0008\u0001\u0010O\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010P\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010Q\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010G\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008R\u0010SJ\u0010\u0010U\u001a\u00020TH\u00a7@\u00a2\u0006\u0004\u0008U\u0010\u001fJ2\u0010X\u001a\u00020\u00072\u0008\u0008\u0001\u0010V\u001a\u00020\u00022\n\u0008\u0001\u0010W\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010*\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008X\u00100J\u001a\u0010[\u001a\u00020Z2\u0008\u0008\u0001\u0010Y\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008[\u0010\"J8\u0010`\u001a\u00020\u00072\u0008\u0008\u0001\u0010\\\u001a\u00020\u00022\u0008\u0008\u0001\u0010]\u001a\u00020\u00042\u0008\u0008\u0001\u0010^\u001a\u00020\u00042\u0008\u0008\u0001\u0010_\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0004\u0008`\u0010aJ8\u0010b\u001a\u00020\u00072\u0008\u0008\u0001\u0010\\\u001a\u00020\u00022\u0008\u0008\u0001\u0010]\u001a\u00020\u00042\u0008\u0008\u0001\u0010^\u001a\u00020\u00042\u0008\u0008\u0001\u0010_\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0004\u0008b\u0010aJ\u001a\u0010c\u001a\u00020\u00072\u0008\u0008\u0003\u0010E\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008c\u0010\"Jf\u0010m\u001a\u00020l2\u0008\u0008\u0001\u0010d\u001a\u00020\u00022\u0008\u0008\u0001\u0010e\u001a\u00020\u00022\u0008\u0008\u0001\u0010f\u001a\u00020\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\u0008\u0008\u0001\u0010h\u001a\u00020\u00022\n\u0008\u0001\u0010i\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010j\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010k\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008m\u0010nJ\u0010\u0010o\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0004\u0008o\u0010\u001fJ\u0094\u0001\u0010w\u001a\u00020v2\n\u0008\u0003\u0010d\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010e\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010f\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010p\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010q\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010j\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010k\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010r\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010s\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010t\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0003\u0010u\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008w\u0010xJ\u001a\u0010z\u001a\u00020y2\u0008\u0008\u0001\u0010g\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008z\u0010\"J\u0010\u0010{\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0004\u0008{\u0010\u001fJ\u0010\u0010|\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0004\u0008|\u0010\u001fJ\u0010\u0010}\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0004\u0008}\u0010\u001fJ\u0010\u0010~\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0004\u0008~\u0010\u001fJ\u001c\u0010\u0080\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u007f\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u0080\u0001\u0010\"J&\u0010\u0081\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u007f\u001a\u00020\u00022\u0008\u0008\u0001\u0010V\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u0081\u0001\u0010&J\u001c\u0010\u0082\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u007f\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u0082\u0001\u0010\"J\u001d\u0010\u0084\u0001\u001a\u00020\u00072\t\u0008\u0001\u0010\u0083\u0001\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\"J+\u0010\u0086\u0001\u001a\u00020\u00072\u000b\u0008\u0001\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010G\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u0086\u0001\u0010&J6\u0010\u0089\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\u000b\u0008\u0001\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u0089\u0001\u00100J\u0012\u0010\u008a\u0001\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0005\u0008\u008a\u0001\u0010\u001fJ\u0012\u0010\u008b\u0001\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0005\u0008\u008b\u0001\u0010\u001fJ*\u0010\u008d\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\u000b\u0008\u0001\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0004H\u00a7@\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001Jh\u0010\u0095\u0001\u001a\u00030\u0094\u00012\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\u000b\u0008\u0003\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010d\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\n\u0008\u0001\u0010\u0091\u0001\u001a\u00030\u0090\u00012\u000c\u0008\u0003\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u000b\u0008\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u0095\u0001\u0010\u0096\u0001J\u00bd\u0001\u0010\u009c\u0001\u001a\u00030\u0094\u00012\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\u000b\u0008\u0001\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00022\t\u0008\u0001\u0010\u008f\u0001\u001a\u00020\u00022\n\u0008\u0001\u0010d\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010?\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u0099\u0001\u001a\u00030\u0090\u00012\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\n\u0008\u0001\u0010j\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010k\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u000f2\u000b\u0008\u0003\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u009d\u0001JC\u0010\u00a2\u0001\u001a\u00020\u00072\t\u0008\u0001\u0010\u009e\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u009f\u0001\u001a\u00020\u00042\u000b\u0008\u0001\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u00042\u000b\u0008\u0001\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001J]\u0010\u00a5\u0001\u001a\u00020\u00072\t\u0008\u0001\u0010\u009e\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u009f\u0001\u001a\u00020\u00042\u000b\u0008\u0001\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001JL\u0010\u00a8\u0001\u001a\u00030\u00a7\u00012\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\u000b\u0008\u0001\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010d\u001a\u00020\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\u000b\u0008\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J(\u0010\u00ac\u0001\u001a\u00030\u00ab\u00012\u0008\u0008\u0001\u0010$\u001a\u00020\u00022\t\u0008\u0001\u0010\u00aa\u0001\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00ac\u0001\u0010&J3\u0010\u00b0\u0001\u001a\u00030\u00af\u00012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\t\u0008\u0001\u0010\u00ad\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u00ae\u0001\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00b0\u0001\u00100J&\u0010\u00b1\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u00022\u0008\u0008\u0001\u0010*\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00b1\u0001\u0010&J+\u0010\u00b5\u0001\u001a\u00030\u00b4\u00012\t\u0008\u0001\u0010\u00b2\u0001\u001a\u00020\u00022\u000b\u0008\u0001\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010&J8\u0010\u00b9\u0001\u001a\u00030\u00ab\u00012\t\u0008\u0001\u0010\u00b6\u0001\u001a\u00020\u00022\u000b\u0008\u0003\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00b9\u0001\u00100Jz\u0010\u00bf\u0001\u001a\u00030\u00be\u00012\t\u0008\u0001\u0010\u00ba\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u00bb\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u00bc\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\t\u0008\u0001\u0010\u00bd\u0001\u001a\u00020\u00022\u000b\u0008\u0001\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\n\u0008\u0001\u0010d\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001Jz\u0010\u00c1\u0001\u001a\u00030\u00be\u00012\t\u0008\u0001\u0010\u00ba\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u00bb\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u00bc\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\t\u0008\u0001\u0010\u00bd\u0001\u001a\u00020\u00022\u000b\u0008\u0001\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\n\u0008\u0001\u0010d\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00c1\u0001\u0010\u00c0\u0001JP\u0010\u00c4\u0001\u001a\u00030\u00be\u00012\t\u0008\u0001\u0010\u00c2\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\u000b\u0008\u0001\u0010\u00c3\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00c4\u0001\u0010\u00a9\u0001J\u001c\u0010\u00c5\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00c5\u0001\u0010\"J\u001c\u0010\u00c6\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00c6\u0001\u0010\"J\u001c\u0010\u00c7\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00c7\u0001\u0010\"J\u001c\u0010\u00c8\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00c8\u0001\u0010\"J8\u0010\u00cb\u0001\u001a\u00020\u00072\n\u0008\u0001\u0010P\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u00ca\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00cb\u0001\u00100J\u001c\u0010\u00cc\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00cc\u0001\u0010\"JC\u0010\u00ce\u0001\u001a\u00020\u00072\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010#\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010F\u001a\u00020\u00042\u000c\u0008\u0001\u0010\u00cd\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u00a7@\u00a2\u0006\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001JA\u0010\u00d0\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010$\u001a\u00020\u00022\u0008\u0008\u0001\u0010F\u001a\u00020\u00042\u000c\u0008\u0001\u0010\u00cd\u0001\u001a\u0005\u0018\u00010\u0090\u00012\n\u0008\u0001\u0010G\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001J3\u0010\u00d2\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010#\u001a\u00020\u00022\u0008\u0008\u0001\u0010F\u001a\u00020\u00042\n\u0008\u0001\u0010\u00cd\u0001\u001a\u00030\u0090\u0001H\u00a7@\u00a2\u0006\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001J3\u0010\u00d4\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010#\u001a\u00020\u00022\u0008\u0008\u0001\u0010F\u001a\u00020\u00042\n\u0008\u0001\u0010\u00cd\u0001\u001a\u00030\u0090\u0001H\u00a7@\u00a2\u0006\u0006\u0008\u00d4\u0001\u0010\u00d3\u0001J*\u0010\u00d6\u0001\u001a\u00030\u00be\u00012\n\u0008\u0001\u0010\u00d5\u0001\u001a\u00030\u0090\u00012\u0008\u0008\u0001\u0010g\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00d6\u0001\u0010\u00d7\u0001JP\u0010\u00db\u0001\u001a\u00030\u00da\u00012\u000b\u0008\u0001\u0010\u00d8\u0001\u001a\u0004\u0018\u00010\u00042\n\u0008\u0001\u0010#\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0001\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00db\u0001\u0010\u00dc\u0001J\u0012\u0010\u00dd\u0001\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0005\u0008\u00dd\u0001\u0010\u001fJ<\u0010\u00e0\u0001\u001a\u00030\u00df\u00012\t\u0008\u0001\u0010\u00de\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u00105\u001a\u00020\u00022\u0008\u0008\u0001\u00106\u001a\u00020\u00022\u0008\u0008\u0001\u00107\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00e0\u0001\u00109JA\u0010\u00e4\u0001\u001a\u00030\u00e3\u00012\t\u0008\u0001\u0010\u00de\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u00e1\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\u000b\u0008\u0001\u0010\u00e2\u0001\u001a\u0004\u0018\u00010\u000fH\u00a7@\u00a2\u0006\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001J\u001e\u0010\u00e8\u0001\u001a\u00030\u00e7\u00012\t\u0008\u0001\u0010\u00e6\u0001\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00e8\u0001\u0010\"Jp\u0010\u00ea\u0001\u001a\u00030\u00e9\u00012\t\u0008\u0001\u0010\u00de\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\u0008\u0008\u0001\u0010?\u001a\u00020\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\u000b\u0008\u0003\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010j\u001a\u0005\u0018\u00010\u0090\u00012\n\u0008\u0003\u0010k\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00ea\u0001\u0010\u00eb\u0001Jq\u0010\u00ed\u0001\u001a\u00030\u00e9\u00012\t\u0008\u0001\u0010\u00de\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u00ec\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010?\u001a\u00020\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u00022\u000b\u0008\u0003\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010j\u001a\u0005\u0018\u00010\u0090\u00012\n\u0008\u0003\u0010k\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00ed\u0001\u0010\u00eb\u0001J\u001c\u0010\u00ee\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010F\u001a\u00020\u0004H\u00a7@\u00a2\u0006\u0005\u0008\u00ee\u0001\u0010KJ<\u0010\u00f1\u0001\u001a\u00020y2\t\u0008\u0001\u0010\u00ef\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010 \u001a\u00020\u00022\t\u0008\u0001\u0010\u00f0\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010g\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00f1\u0001\u00109J(\u0010\u00f4\u0001\u001a\u00030\u00f3\u00012\t\u0008\u0001\u0010\u00f2\u0001\u001a\u00020\u00022\u0008\u0008\u0001\u0010$\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0005\u0008\u00f4\u0001\u0010&JC\u0010\u00f9\u0001\u001a\u00020\u00072\t\u0008\u0001\u0010\u00f5\u0001\u001a\u00020\u00022\t\u0008\u0001\u0010\u00f6\u0001\u001a\u00020\u00042\u000b\u0008\u0003\u0010\u00f7\u0001\u001a\u0004\u0018\u00010\u00022\u000b\u0008\u0003\u0010\u00f8\u0001\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0006\u0008\u00f9\u0001\u0010\u00fa\u0001\u00a8\u0006\u00fb\u0001\u00c0\u0006\u0003"
    }
    d2 = {
        "Lorg/wikipedia/dataclient/Service;",
        "",
        "",
        "searchTerm",
        "",
        "maxResults",
        "gpsOffset",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "prefixSearch",
        "(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lretrofit2/Response;",
        "prefixSearchResponse",
        "gsrLimit",
        "gsrOffset",
        "fullTextSearch",
        "",
        "isSemantic",
        "fullTextSearchResponse",
        "(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "prefix",
        "prefixSearchUsers",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fullTextSearchCommons",
        "fullTextSearchTemplates",
        "piLimit",
        "sMaxAge",
        "maxAge",
        "searchMoreLike",
        "(Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lorg/wikipedia/captcha/Captcha;",
        "getNewCaptcha",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "title",
        "getLangLinks",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pageIds",
        "titles",
        "getInfoByPageIdsOrTitles",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getInfoWithExtractsByPageTitles",
        "getInfoByTitlesWithGlobalUserInfo",
        "getPageIds",
        "lang",
        "getImageInfo",
        "getVideoInfo",
        "metadataLang",
        "entityLang",
        "getImageInfoWithEntityTerms",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getProtection",
        "getProtectionWithUserInfo",
        "Lorg/wikipedia/dataclient/mwapi/SiteMatrix;",
        "getSiteMatrix",
        "saveHeader",
        "langHeader",
        "titleHeader",
        "getPageNamespaceWithSiteInfo",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSiteInfo",
        "getSiteInfoWithMagicWords",
        "pageTitle",
        "Lorg/wikipedia/dataclient/mwapi/MwParseResponse;",
        "parsePage",
        "text",
        "parseText",
        "mainPageTitle",
        "parseTextForMainPage",
        "getCategories",
        "getCategoriesProps",
        "type",
        "count",
        "continueStr",
        "getCategoryMembers",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRandomPages",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRandomPagesWithExtract",
        "getRandomImages",
        "startTimeStamp",
        "direction",
        "latestRevisions",
        "filters",
        "getRecentEdits",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lorg/wikimedia/testkitchen/config/StreamConfigCollection;",
        "getStreamConfigs",
        "messages",
        "args",
        "getMessages",
        "url",
        "Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse;",
        "shortenUrl",
        "coordinates",
        "radius",
        "ggsLimit",
        "coLimit",
        "getGeoSearch",
        "(Ljava/lang/String;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getGeoSearchWithExtracts",
        "getToken",
        "user",
        "pass",
        "retype",
        "token",
        "returnurl",
        "email",
        "captchaId",
        "captchaWord",
        "Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;",
        "postCreateAccount",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLoginToken",
        "twoFactorCode",
        "emailAuthToken",
        "returnUrl",
        "loginToken",
        "loginContinue",
        "newModule",
        "Lorg/wikipedia/login/LoginResponse;",
        "postLogIn",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lorg/wikipedia/dataclient/mwapi/MwPostResponse;",
        "postLogout",
        "getAuthManagerInfo",
        "getAuthManagerForLogin",
        "getUserInfo",
        "getLocalAndGlobalUserInfo",
        "userName",
        "userInfo",
        "userInfoWithMessages",
        "globalUserInfo",
        "userNames",
        "getUserList",
        "filter",
        "getAllNotifications",
        "readList",
        "unreadList",
        "markRead",
        "lastUnreadNotification",
        "unreadNotificationWikis",
        "section",
        "getWikiTextForSectionWithInfo",
        "(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "summary",
        "",
        "undoRevId",
        "undoRevAfter",
        "tags",
        "Lorg/wikipedia/edit/Edit;",
        "postUndoEdit",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "newSectionTitle",
        "appendText",
        "baseRevId",
        "minor",
        "watchlist",
        "postEditSubmit",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "username",
        "maxCount",
        "ns",
        "uccontinue",
        "getUserContributions",
        "(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ucdir",
        "getUserContrib",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lorg/wikipedia/dataclient/rollback/RollbackPostResponse;",
        "postRollback",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sites",
        "Lorg/wikipedia/dataclient/wikidata/Entities;",
        "getEntitiesByTitleSuspend",
        "searchLang",
        "resultLang",
        "Lorg/wikipedia/dataclient/wikidata/Search;",
        "searchEntities",
        "getWikidataEntityTerms",
        "entity",
        "property",
        "Lorg/wikipedia/dataclient/wikidata/Claims;",
        "getClaims",
        "idList",
        "languages",
        "siteFilter",
        "getWikidataLabelsAndDescriptions",
        "language",
        "useLang",
        "site",
        "newDescription",
        "Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;",
        "postDescriptionEdit",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "postLabelEdit",
        "id",
        "data",
        "postEditEntity",
        "getWatchedStatus",
        "getWatchedStatusWithUserOptions",
        "getWatchedStatusWithRights",
        "getWatchedStatusWithCategories",
        "showCriteria",
        "typeOfChanges",
        "getWatchlist",
        "getLastModified",
        "revisionStartId",
        "getRevisionDetailsAscending",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRevisionDetailsDescending",
        "(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRevisionDetailsWithInfo",
        "(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRevisionDetailsWithUserInfo",
        "revisionId",
        "postThanksToRevision",
        "(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unwatch",
        "expiry",
        "Lorg/wikipedia/dataclient/watch/WatchPostResponse;",
        "watch",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getWatchToken",
        "page",
        "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse;",
        "getTalkPageTopics",
        "topicName",
        "subscribe",
        "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscribeResponse;",
        "subscribeTalkPageTopic",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "topicNames",
        "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscriptionList;",
        "getTalkPageTopicSubscriptions",
        "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse;",
        "postTalkPageTopic",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "commentId",
        "postTalkPageTopicReply",
        "getPagesWithImageRecommendations",
        "taskType",
        "fileName",
        "invalidateImageRecommendation",
        "langCode",
        "Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse;",
        "getTemplateData",
        "articleTopics",
        "limit",
        "profile",
        "sort",
        "getArticlesByTopic",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract fullTextSearch(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrsearch"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrlimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsroffset"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&converttitles=&prop=description|pageimages|pageprops|coordinates|info&ppprop=mainpage|disambiguation&generator=search&gsrnamespace=0&gsrwhat=text&inprop=varianttitles|displaytitle&gsrinfo=&gsrprop=redirecttitle&piprop=thumbnail&pilicense=any&pithumbsize=330"
    .end annotation
.end method

.method public abstract fullTextSearchCommons(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrsearch"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrlimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsroffset"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=search&prop=imageinfo&iiprop=extmetadata|url&gsrnamespace=6&iiurlwidth=330"
    .end annotation
.end method

.method public abstract fullTextSearchResponse(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrsearch"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrlimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsroffset"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Query;
            value = "cirrusSemanticSearch"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&converttitles=&prop=description|pageimages|pageprops|coordinates|info&ppprop=mainpage|disambiguation&generator=search&gsrnamespace=0&gsrwhat=text&inprop=varianttitles|displaytitle&gsrinfo=&gsrprop=redirecttitle|snippet|sectiontitle&piprop=thumbnail&pilicense=any&pithumbsize=330"
    .end annotation
.end method

.method public abstract fullTextSearchTemplates(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrsearch"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrlimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsroffset"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&converttitles=&prop=description|info&generator=search&gsrnamespace=0&gsrwhat=text&inprop=varianttitles|displaytitle&gsrinfo=&gsrprop=redirecttitle"
    .end annotation
.end method

.method public abstract getAllNotifications(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "notfilter"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "notcontinue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=notifications&notformat=model&notlimit=max&notwikis=*"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getArticlesByTopic(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrsearch"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrlimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrqiprofile"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrsort"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=search&redirects=&converttitles=&prop=description|pageimages|pageprops|info|extracts&exchars=500&exintro=1&explaintext=1&piprop=thumbnail&pilicense=any&gsrnamespace=0&inprop=varianttitles|displaytitle&pithumbsize=330"
    .end annotation
.end method

.method public abstract getAuthManagerForLogin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=authmanagerinfo&amirequestsfor=login"
    .end annotation
.end method

.method public abstract getAuthManagerInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=authmanagerinfo|tokens&amirequestsfor=create&type=createaccount"
    .end annotation
.end method

.method public abstract getCategories(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&generator=categories&inprop=varianttitles|displaytitle&gclshow=!hidden&gcllimit=500"
    .end annotation
.end method

.method public abstract getCategoriesProps(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=categories&clshow=!hidden&cllimit=100"
    .end annotation
.end method

.method public abstract getCategoryMembers(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gcmtitle"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gcmtype"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gcmlimit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gcmcontinue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=description|pageimages|info&pilicense=any&generator=categorymembers&inprop=varianttitles|displaytitle&gcmprop=ids|title"
    .end annotation
.end method

.method public abstract getClaims(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "entity"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "property"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/wikidata/Claims;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbgetclaims"
    .end annotation
.end method

.method public abstract getEntitiesByTitleSuspend(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sites"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/wikidata/Entities;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbgetentities"
    .end annotation
.end method

.method public abstract getGeoSearch(Ljava/lang/String;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "ggscoord"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "ggsradius"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "ggslimit"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "colimit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=geosearch&prop=coordinates|description|pageimages|info&inprop=varianttitles|displaytitle&pilicense=any"
    .end annotation
.end method

.method public abstract getGeoSearchWithExtracts(Ljava/lang/String;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            encoded = true
            value = "ggscoord"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "ggsradius"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "ggslimit"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "colimit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=geosearch&prop=coordinates|description|pageimages|info|extracts&exchars=500&exintro=1&explaintext=1&inprop=varianttitles|displaytitle&pilicense=any"
    .end annotation
.end method

.method public abstract getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "iiextmetadatalanguage"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=imageinfo&iiprop=timestamp|user|url|mime|metadata|extmetadata&iiurlwidth=330"
    .end annotation
.end method

.method public abstract getImageInfoWithEntityTerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "iiextmetadatalanguage"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "wbetlanguage"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=imageinfo|entityterms&iiprop=timestamp|user|url|mime|extmetadata&iiurlwidth=330"
    .end annotation
.end method

.method public abstract getInfoByPageIdsOrTitles(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pageids"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|description|pageimages&pilicense=any&inprop=varianttitles|displaytitle&redirects=1&pithumbsize=330"
    .end annotation
.end method

.method public abstract getInfoByTitlesWithGlobalUserInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=globaluserinfo&guiprop=editcount&prop=info|description|pageimages&pilicense=any&inprop=varianttitles|displaytitle&redirects=1&assert=user&pithumbsize=330"
    .end annotation
.end method

.method public abstract getInfoWithExtractsByPageTitles(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|description|pageimages|extracts&exchars=500&exintro=1&explaintext=1&pilicense=any&inprop=varianttitles|displaytitle&redirects=1&pithumbsize=330"
    .end annotation
.end method

.method public abstract getLangLinks(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=langlinks&lllimit=500&redirects=&converttitles="
    .end annotation
.end method

.method public abstract getLastModified(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=revisions&rvslots=main&rvprop=timestamp|user|ids|comment|tags"
    .end annotation
.end method

.method public abstract getLocalAndGlobalUserInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=userinfo|globaluserinfo&guiprop=editcount&uiprop=groups|blockinfo|editcount|latestcontrib|hasmsg|options&assert=user"
    .end annotation
.end method

.method public abstract getLoginToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=tokens&type=login"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ammessages"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "amargs"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "amlang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=allmessages&amenableparser=1"
    .end annotation
.end method

.method public abstract getNewCaptcha(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/captcha/Captcha;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=fancycaptchareload"
    .end annotation
.end method

.method public abstract getPageIds(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=siteinfo&siprop=general|autocreatetempuser"
    .end annotation
.end method

.method public abstract getPageNamespaceWithSiteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Save"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Lang"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Title"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=siteinfo&siprop=namespaces"
    .end annotation
.end method

.method public abstract getPagesWithImageRecommendations(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrlimit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=search&gsrsearch=hasrecommendation%3Aimage&gsrnamespace=0&gsrsort=random&prop=growthimagesuggestiondata|revisions|pageimages&pilicense=any&rvprop=ids|timestamp|flags|comment|user|content&rvslots=main&rvsection=0"
    .end annotation
.end method

.method public abstract getProtection(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&inprop=protection"
    .end annotation
.end method

.method public abstract getProtectionWithUserInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=userinfo&prop=info&inprop=protection&uiprop=groups"
    .end annotation
.end method

.method public abstract getRandomImages(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "grnlimit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=random&redirects=1&grnnamespace=6&prop=info|description|imageinfo|revisions|globalusage&inprop=protection&gunamespace=0&rvprop=ids|timestamp|flags|comment|user|content&rvslots=mediainfo&iiprop=timestamp|user|url|mime|extmetadata&iilocalonly=1&iiurlwidth=330"
    .end annotation
.end method

.method public abstract getRandomPages(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "grnlimit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=random&redirects=1&grnnamespace=0&prop=pageprops|description|info&inprop=protection"
    .end annotation
.end method

.method public abstract getRandomPagesWithExtract(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "grnlimit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=random&grnfilterredir=nonredirects&grnnamespace=0&prop=pageprops|pageimages|description|info|extracts&exchars=500&exintro=1&explaintext=1&piprop=thumbnail&pilicense=any&inprop=varianttitles|displaytitle&pithumbsize=330"
    .end annotation
.end method

.method public abstract getRecentEdits(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "rclimit"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rcstart"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rcdir"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rctoponly"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rcshow"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rccontinue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=recentchanges&rcprop=title|timestamp|ids|oresscores|sizes|tags|user|parsedcomment|comment|flags&rcnamespace=0&rctype=edit|new"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getRevisionDetailsAscending(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pageids"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "rvlimit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "rvstartid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|revisions&rvslots=main&rvprop=ids|timestamp|size|flags|comment|parsedcomment|user|oresscores&rvdir=newer"
    .end annotation
.end method

.method public abstract getRevisionDetailsDescending(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "rvlimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "rvstartid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rvcontinue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|revisions&rvslots=main&rvprop=ids|timestamp|size|flags|comment|parsedcomment|user|oresscores&rvdir=older"
    .end annotation
.end method

.method public abstract getRevisionDetailsWithInfo(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pageids"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "rvlimit"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "rvstartid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|revisions&rvslots=main&rvprop=ids|timestamp|size|flags|comment|parsedcomment|user|oresscores&rvdir=older"
    .end annotation
.end method

.method public abstract getRevisionDetailsWithUserInfo(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pageids"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "rvlimit"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "rvstartid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|revisions&rvslots=main&rvprop=ids|timestamp|size|flags|comment|parsedcomment|user|oresscores&rvdir=older&inprop=watched&meta=userinfo&uiprop=rights"
    .end annotation
.end method

.method public abstract getSiteInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=siteinfo&maxage=86400&smaxage=86400"
    .end annotation
.end method

.method public abstract getSiteInfoWithMagicWords(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=siteinfo&siprop=general|magicwords"
    .end annotation
.end method

.method public abstract getSiteMatrix(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/SiteMatrix;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=sitematrix&smtype=language&smlangprop=code|name|localname&maxage=86400&smaxage=86400"
    .end annotation
.end method

.method public abstract getStreamConfigs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikimedia/testkitchen/config/StreamConfigCollection;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=streamconfigs&format=json"
    .end annotation
.end method

.method public abstract getTalkPageTopicSubscriptions(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "commentname"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscriptionList;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolsgetsubscriptions"
    .end annotation
.end method

.method public abstract getTalkPageTopics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Save"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Lang"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Title"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsInfoResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolspageinfo&prop=threaditemshtml"
    .end annotation
.end method

.method public abstract getTemplateData(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=templatedata&includeMissingTitles=&converttitles="
    .end annotation
.end method

.method public abstract getToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=tokens"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getUserContrib(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ucuser"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uclimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ucnamespace"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ucshow"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uccontinue"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ucdir"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=usercontribs&ucprop=ids|title|timestamp|comment|size|flags|sizediff|tags"
    .end annotation
.end method

.method public abstract getUserContributions(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ucuser"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uclimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "ucnamespace"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uccontinue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=usercontribs&ucprop=ids|title|timestamp|comment|size|flags|sizediff|tags&meta=userinfo&uiprop=groups|blockinfo|editcount|latestcontrib|rights|registrationdate"
    .end annotation
.end method

.method public abstract getUserInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=userinfo&uiprop=groups|blockinfo|editcount|latestcontrib|hasmsg|options&assert=user"
    .end annotation
.end method

.method public abstract getUserList(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ususers"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=users&usprop=groups|cancreate"
    .end annotation
.end method

.method public abstract getVideoInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "viextmetadatalanguage"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=videoinfo&viprop=timestamp|user|url|mime|metadata|extmetadata|derivatives&viurlwidth=330"
    .end annotation
.end method

.method public abstract getWatchToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=tokens&type=watch"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getWatchedStatus(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&converttitles=&redirects=&inprop=watched"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getWatchedStatusWithCategories(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info|categories&converttitles=&redirects=&inprop=watched&clshow=!hidden&cllimit=100"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getWatchedStatusWithRights(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&converttitles=&redirects=&inprop=watched&meta=userinfo&uiprop=rights"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getWatchedStatusWithUserOptions(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=info&converttitles=&redirects=&inprop=watched&meta=userinfo&uiprop=options"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getWatchlist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "wlallrev"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "wlshow"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "wltype"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=watchlist&wllimit=500&wlprop=ids|title|flags|comment|parsedcomment|timestamp|sizes|user|loginfo&assert=user"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getWikiTextForSectionWithInfo(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "rvsection"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=revisions|info&meta=siteinfo&siprop=general|autocreatetempuser&rvslots=main&rvprop=content|timestamp|ids&rvlimit=1&converttitles=&intestactions=edit&intestactionsdetail=full&inprop=editintro"
    .end annotation
.end method

.method public abstract getWikidataEntityTerms(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "titles"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "wbetlanguage"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&prop=entityterms"
    .end annotation
.end method

.method public abstract getWikidataLabelsAndDescriptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ids"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "languages"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sitefilter"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/wikidata/Entities;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbgetentities&props=descriptions|labels|sitelinks"
    .end annotation
.end method

.method public abstract globalUserInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "guiuser"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=globaluserinfo&guiprop=editcount|groups|rights"
    .end annotation
.end method

.method public abstract invalidateImageRecommendation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "tasktype"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "title"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "filename"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwPostResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=growthinvalidateimagerecommendation"
    .end annotation
.end method

.method public abstract lastUnreadNotification(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=notifications&notwikis=*&notprop=list&notfilter=!read&notlimit=1"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract markRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "list"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "unreadlist"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=echomarkread"
    .end annotation
.end method

.method public abstract parsePage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwParseResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=parse&prop=text&mobileformat=1"
    .end annotation
.end method

.method public abstract parseText(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "text"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwParseResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=parse&prop=text&mobileformat=1&contentmodel=wikitext&disablelimitreport=1"
    .end annotation
.end method

.method public abstract parseTextForMainPage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwParseResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=parse&prop=text&mobileformat=1&mainpage=1"
    .end annotation
.end method

.method public abstract postCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "password"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "retype"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "createtoken"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "createreturnurl"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "email"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaId"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaWord"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=createaccount&createmessageformat=html"
    .end annotation
.end method

.method public abstract postDescriptionEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "language"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "uselang"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "site"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "title"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "value"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "summary"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "assert"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "matags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbsetdescription&errorlang=uselang"
    .end annotation
.end method

.method public abstract postEditEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "data"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "summary"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "matags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbeditentity&errorlang=uselang"
    .end annotation
.end method

.method public abstract postEditSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "section"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "sectiontitle"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "summary"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "assert"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "text"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "appendtext"
        .end annotation
    .end param
    .param p8    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "baserevid"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaid"
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaword"
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Field;
            value = "minor"
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "watchlist"
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "matags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/edit/Edit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=edit"
    .end annotation
.end method

.method public abstract postLabelEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "language"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "uselang"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "site"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "title"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "value"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "summary"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "assert"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "matags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbsetlabel&errorlang=uselang"
    .end annotation
.end method

.method public abstract postLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "password"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "retype"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "OATHToken"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaId"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaWord"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "loginreturnurl"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "logintoken"
        .end annotation
    .end param
    .param p10    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Field;
            value = "logincontinue"
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "newModule"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/login/LoginResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=clientlogin&rememberMe="
    .end annotation
.end method

.method public abstract postLogout(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwPostResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=logout"
    .end annotation
.end method

.method public abstract postRollback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "summary"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "user"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "matags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/rollback/RollbackPostResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=rollback"
    .end annotation
.end method

.method public abstract postTalkPageTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "sectiontitle"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "wikitext"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "summary"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaid"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaword"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "matags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolsedit&paction=addtopic"
    .end annotation
.end method

.method public abstract postTalkPageTopicReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "commentid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "wikitext"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "summary"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaid"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "captchaword"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "matags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsEditResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolsedit&paction=addcomment"
    .end annotation
.end method

.method public abstract postThanksToRevision(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "rev"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/wikidata/EntityPostResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=thank"
    .end annotation
.end method

.method public abstract postUndoEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "summary"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "assert"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lretrofit2/http/Field;
            value = "undo"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Field;
            value = "undoafter"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "matags"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/edit/Edit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=edit"
    .end annotation
.end method

.method public abstract prefixSearch(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gpssearch"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gpslimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "gpsoffset"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&redirects=&converttitles=&prop=description|pageimages|coordinates|info&piprop=thumbnail&pilicense=any&generator=prefixsearch&gpsnamespace=0&inprop=varianttitles|displaytitle&pithumbsize=330"
    .end annotation
.end method

.method public abstract prefixSearchResponse(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gpssearch"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gpslimit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "gpsoffset"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&redirects=&converttitles=&prop=description|pageimages|coordinates|info&piprop=thumbnail&pilicense=any&generator=prefixsearch&gpsnamespace=0&inprop=varianttitles|displaytitle&pithumbsize=330"
    .end annotation
.end method

.method public abstract prefixSearchUsers(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "auprefix"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "aulimit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=allusers&auwitheditsonly=1"
    .end annotation
.end method

.method public abstract searchEntities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "search"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "language"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uselang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/wikidata/Search;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=wbsearchentities&type=item&limit=20"
    .end annotation
.end method

.method public abstract searchMoreLike(Ljava/lang/String;IILjava/lang/Integer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrsearch"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gsrlimit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pilimit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "gsroffset"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "smaxage"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "maxage"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Integer;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&generator=search&gsrnamespace=0&gsrqiprofile=classic_noboostlinks&origin=*&piprop=thumbnail&pilicense=any&prop=pageimages|description|info|pageprops|extracts&exchars=500&exintro=1&explaintext=1&inprop=varianttitles&pithumbsize=330"
    .end annotation
.end method

.method public abstract shortenUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "url"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/ShortenUrlResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=shortenurl"
    .end annotation
.end method

.method public abstract subscribeTalkPageTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "commentname"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Field;
            value = "subscribe"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscribeResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=discussiontoolssubscribe"
    .end annotation
.end method

.method public abstract unreadNotificationWikis(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&meta=unreadnotificationpages&unplimit=max&unpwikis=*"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract userInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ususers"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=users&usprop=editcount|groups|registration|rights"
    .end annotation
.end method

.method public abstract userInfoWithMessages(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ususers"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ammessages"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=query&list=users&usprop=editcount|groups|registration|rights&meta=allmessages"
    .end annotation
.end method

.method public abstract watch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "unwatch"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "pageids"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "titles"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "expiry"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/watch/WatchPostResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "w/api.php?format=json&formatversion=2&errorformat=html&errorsuselocal=1&action=watch&converttitles=&redirects="
    .end annotation
.end method
