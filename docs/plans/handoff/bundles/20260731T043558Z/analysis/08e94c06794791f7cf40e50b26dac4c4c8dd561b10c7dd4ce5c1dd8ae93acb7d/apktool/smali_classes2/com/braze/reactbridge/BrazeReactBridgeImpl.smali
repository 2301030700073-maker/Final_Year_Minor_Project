.class public final Lcom/braze/reactbridge/BrazeReactBridgeImpl;
.super Ljava/lang/Object;
.source "BrazeReactBridgeImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;,
        Lcom/braze/reactbridge/BrazeReactBridgeImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeReactBridgeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeReactBridgeImpl.kt\ncom/braze/reactbridge/BrazeReactBridgeImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1113:1\n1557#2:1114\n1628#2,3:1115\n295#2,2:1118\n295#2,2:1121\n295#2,2:1123\n295#2,2:1125\n1863#2,2:1127\n774#2:1129\n865#2,2:1130\n1279#2,2:1132\n1293#2,4:1134\n1863#2,2:1140\n1#3:1120\n216#4,2:1138\n*S KotlinDebug\n*F\n+ 1 BrazeReactBridgeImpl.kt\ncom/braze/reactbridge/BrazeReactBridgeImpl\n*L\n322#1:1114\n322#1:1115,3\n718#1:1118,2\n735#1:1121,2\n864#1:1123,2\n868#1:1125,2\n874#1:1127,2\n946#1:1129\n946#1:1130,2\n947#1:1132,2\n947#1:1134,4\n444#1:1140,2\n948#1:1138,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u0006\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\u0018\u0000 \u00d5\u00012\u00020\u0001:\u0002\u00d5\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010/\u001a\u000200J\u0018\u00101\u001a\u0002002\u0006\u00102\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u000103J\u000e\u00105\u001a\u0002002\u0006\u00106\u001a\u00020\u0013J\u0016\u00107\u001a\u0002002\u0006\u00108\u001a\u0002032\u0006\u00109\u001a\u000203J\u000e\u0010:\u001a\u0002002\u0006\u0010;\u001a\u000203J\u0018\u0010<\u001a\u0002002\u0006\u0010=\u001a\u0002032\u0008\u0010>\u001a\u0004\u0018\u00010?J0\u0010@\u001a\u0002002\u0006\u0010A\u001a\u0002032\u0006\u0010B\u001a\u0002032\u0006\u0010C\u001a\u0002032\u0006\u0010D\u001a\u00020E2\u0008\u0010>\u001a\u0004\u0018\u00010?J \u0010F\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010H\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010I\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010H\u001a\u00020\u00182\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010J\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010H\u001a\u00020E2\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010K\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010H\u001a\u00020L2\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010M\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010N\u001a\u00020E2\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010O\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010P\u001a\u00020E2\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u0018\u0010Q\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010R\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010H\u001a\u00020S2\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010T\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010H\u001a\u00020S2\u0008\u00106\u001a\u0004\u0018\u00010\u0013J,\u0010U\u001a\u0002002\u0008\u0010G\u001a\u0004\u0018\u0001032\u0008\u0010H\u001a\u0004\u0018\u00010?2\u0006\u0010V\u001a\u00020\u00182\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010W\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010H\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J \u0010X\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0006\u0010H\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u000e\u0010Y\u001a\u0002002\u0006\u0010Z\u001a\u000203J\u000e\u0010[\u001a\u0002002\u0006\u0010\\\u001a\u000203J\u000e\u0010]\u001a\u0002002\u0006\u0010^\u001a\u000203J\u0018\u0010_\u001a\u0002002\u0006\u0010`\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u001e\u0010a\u001a\u0002002\u0006\u0010b\u001a\u00020E2\u0006\u0010c\u001a\u00020E2\u0006\u0010d\u001a\u00020EJ\u000e\u0010e\u001a\u0002002\u0006\u0010f\u001a\u000203J\u000e\u0010g\u001a\u0002002\u0006\u0010h\u001a\u000203J\u000e\u0010i\u001a\u0002002\u0006\u0010j\u001a\u000203J\u000e\u0010k\u001a\u0002002\u0006\u0010l\u001a\u000203J\u0018\u0010m\u001a\u0002002\u0006\u0010n\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u0018\u0010o\u001a\u0002002\u0006\u0010n\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u0018\u0010p\u001a\u0002002\u0006\u0010q\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u0018\u0010r\u001a\u0002002\u0006\u0010q\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u0006\u0010s\u001a\u000200J\u0006\u0010t\u001a\u000200J\u0016\u0010u\u001a\u0002002\u0006\u0010v\u001a\u0002032\u0006\u0010w\u001a\u00020xJ\u000e\u0010y\u001a\u0002002\u0006\u0010z\u001a\u00020SJ\u000e\u0010{\u001a\u0002002\u0006\u0010w\u001a\u00020xJ\u000e\u0010|\u001a\u0002002\u0006\u0010}\u001a\u000203J\u000e\u0010~\u001a\u0002002\u0006\u0010}\u001a\u000203J\u000f\u0010\u007f\u001a\u0002002\u0007\u0010\u0080\u0001\u001a\u00020\u0018J\u0007\u0010\u0081\u0001\u001a\u000200J\u000f\u0010\u0082\u0001\u001a\u0002002\u0006\u0010w\u001a\u00020xJ\u000f\u0010\u0083\u0001\u001a\u0002002\u0006\u0010w\u001a\u00020xJ\u000f\u0010\u0084\u0001\u001a\u0002002\u0006\u0010;\u001a\u000203J\u0012\u0010\u0085\u0001\u001a\u0002002\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010?J\t\u0010\u0087\u0001\u001a\u000200H\u0002J\t\u0010\u0088\u0001\u001a\u000200H\u0002J\t\u0010\u0089\u0001\u001a\u000200H\u0002J\t\u0010\u008a\u0001\u001a\u000200H\u0002J\t\u0010\u008b\u0001\u001a\u000200H\u0002J\t\u0010\u008c\u0001\u001a\u000200H\u0002J\u000f\u0010\u008d\u0001\u001a\u0002002\u0006\u0010}\u001a\u000203J\u000f\u0010\u008e\u0001\u001a\u0002002\u0006\u0010}\u001a\u000203J\u000f\u0010\u008f\u0001\u001a\u0002002\u0006\u0010}\u001a\u000203J\u000f\u0010\u0090\u0001\u001a\u0002002\u0006\u0010}\u001a\u000203J\'\u0010\u0091\u0001\u001a\u0002002\t\u0010\u0092\u0001\u001a\u0004\u0018\u0001032\u0008\u00106\u001a\u0004\u0018\u00010\u00132\u0007\u0010\u0093\u0001\u001a\u000203H\u0002J\u001a\u0010\u0094\u0001\u001a\u0002002\u0007\u0010\u0092\u0001\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u001a\u0010\u0095\u0001\u001a\u0002002\u0007\u0010\u0092\u0001\u001a\u0002032\u0008\u00106\u001a\u0004\u0018\u00010\u0013J\u0007\u0010\u0096\u0001\u001a\u000200J\u0007\u0010\u0097\u0001\u001a\u000200J\u0007\u0010\u0098\u0001\u001a\u000200J\u0007\u0010\u0099\u0001\u001a\u000200J\u001b\u0010\u009a\u0001\u001a\u0002002\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u009d\u0001\u001a\u00030\u009c\u0001J-\u0010\u009e\u0001\u001a\u0002002\u0006\u0010G\u001a\u0002032\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u009d\u0001\u001a\u00030\u009c\u00012\u0008\u00106\u001a\u0004\u0018\u00010\u0013J9\u0010\u009f\u0001\u001a\u0002002\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u009d\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u00a1\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u009c\u0001J\u0010\u0010\u00a3\u0001\u001a\u0002002\u0007\u0010\u00a4\u0001\u001a\u00020\u0018J\u0007\u0010\u00a5\u0001\u001a\u000200J\u0010\u0010\u00a6\u0001\u001a\u0002002\u0007\u0010\u00a7\u0001\u001a\u000203J\u0018\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\u00182\u0007\u0010\u00a7\u0001\u001a\u000203\u00a2\u0006\u0003\u0010\u00a9\u0001J\u0019\u0010\u00aa\u0001\u001a\u0002002\u0007\u0010\u00a7\u0001\u001a\u0002032\u0007\u0010\u00ab\u0001\u001a\u00020EJ\u0019\u0010\u00ac\u0001\u001a\u0002002\u0007\u0010\u00a7\u0001\u001a\u0002032\u0007\u0010\u00ab\u0001\u001a\u00020EJ3\u0010\u00ad\u0001\u001a\u0002002\t\u0010\u00ae\u0001\u001a\u0004\u0018\u0001032\t\u0010\u00af\u0001\u001a\u0004\u0018\u0001032\t\u0010\u00b0\u0001\u001a\u0004\u0018\u0001032\t\u0010\u00b1\u0001\u001a\u0004\u0018\u000103J\u000f\u0010\u00b2\u0001\u001a\u0002002\u0006\u00106\u001a\u00020\u0013J2\u0010\u00b3\u0001\u001a\u0002002\'\u0010\u00b4\u0001\u001a\"\u0012\u0017\u0012\u00150\u00b6\u0001\u00a2\u0006\u000f\u0008\u00b7\u0001\u0012\n\u0008\u00b8\u0001\u0012\u0005\u0008\u0008(\u00b9\u0001\u0012\u0004\u0012\u0002000\u00b5\u0001H\u0002J\u000f\u0010\u00ba\u0001\u001a\u0002002\u0006\u0010=\u001a\u000203J\u0010\u0010\u00bb\u0001\u001a\u0002002\u0007\u0010\u00bc\u0001\u001a\u00020EJ\u0012\u0010\u00bd\u0001\u001a\u0002002\u0007\u0010\u00be\u0001\u001a\u00020!H\u0002J\u0012\u0010\u00bf\u0001\u001a\u0002002\u0007\u0010\u00be\u0001\u001a\u00020\u0015H\u0002J\u0013\u0010\u00c0\u0001\u001a\u0004\u0018\u00010\u000f2\u0006\u0010}\u001a\u000203H\u0002J\u0013\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u000f2\u0006\u0010}\u001a\u000203H\u0002J\u000f\u0010\u00c2\u0001\u001a\u0002002\u0006\u0010w\u001a\u00020xJ\u0017\u0010\u00c3\u0001\u001a\u0002002\u0006\u0010}\u001a\u0002032\u0006\u0010w\u001a\u00020xJ\u0007\u0010\u00c4\u0001\u001a\u000200J\u000f\u0010\u00c5\u0001\u001a\u0002002\u0006\u0010}\u001a\u000203J\u001f\u0010\u00c6\u0001\u001a\u0002002\u0006\u0010}\u001a\u0002032\u0006\u0010G\u001a\u0002032\u0006\u0010w\u001a\u00020xJ\u001f\u0010\u00c7\u0001\u001a\u0002002\u0006\u0010}\u001a\u0002032\u0006\u0010G\u001a\u0002032\u0006\u0010w\u001a\u00020xJ\u001f\u0010\u00c8\u0001\u001a\u0002002\u0006\u0010}\u001a\u0002032\u0006\u0010G\u001a\u0002032\u0006\u0010w\u001a\u00020xJ\u001f\u0010\u00c9\u0001\u001a\u0002002\u0006\u0010}\u001a\u0002032\u0006\u0010G\u001a\u0002032\u0006\u0010w\u001a\u00020xJ\u001f\u0010\u00ca\u0001\u001a\u0002002\u0006\u0010}\u001a\u0002032\u0006\u0010G\u001a\u0002032\u0006\u0010w\u001a\u00020xJ\u001f\u0010\u00cb\u0001\u001a\u0002002\u0006\u0010}\u001a\u0002032\u0006\u0010G\u001a\u0002032\u0006\u0010w\u001a\u00020xJ\u0019\u0010\u00cc\u0001\u001a\u0002002\u0007\u0010\u00cd\u0001\u001a\u00020\u00182\u0007\u0010\u00ce\u0001\u001a\u000203J\t\u0010\u00cf\u0001\u001a\u000200H\u0002J%\u0010\u00d0\u0001\u001a\u00020?2\u0008\u0010\u00d1\u0001\u001a\u00030\u00d2\u00012\u0010\u0008\u0002\u0010\u00d3\u0001\u001a\t\u0012\u0004\u0012\u0002030\u00d4\u0001H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00140\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020(0\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u00020,8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.\u00a8\u0006\u00d6\u0001"
    }
    d2 = {
        "Lcom/braze/reactbridge/BrazeReactBridgeImpl;",
        "",
        "reactApplicationContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "currentActivity",
        "Landroid/app/Activity;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/app/Activity;)V",
        "getReactApplicationContext",
        "()Lcom/facebook/react/bridge/ReactApplicationContext;",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "callbackCallLock",
        "contentCards",
        "",
        "Lcom/braze/models/cards/Card;",
        "newsFeedCards",
        "newsFeedSubscriberMap",
        "",
        "Lcom/facebook/react/bridge/Callback;",
        "Lcom/braze/events/IEventSubscriber;",
        "Lcom/braze/events/FeedUpdatedEvent;",
        "callbackCallMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "contentCardsLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "contentCardsUpdatedAt",
        "",
        "newsFeedCardsUpdatedAt",
        "inAppMessageDisplayOperation",
        "Lcom/braze/ui/inappmessage/InAppMessageOperation;",
        "contentCardsUpdatedSubscriber",
        "Lcom/braze/events/ContentCardsUpdatedEvent;",
        "bannersUpdatedSubscriber",
        "Lcom/braze/events/BannersUpdatedEvent;",
        "newsFeedCardsUpdatedSubscriber",
        "sdkAuthErrorSubscriber",
        "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
        "pushNotificationEventSubscriber",
        "Lcom/braze/events/BrazePushEvent;",
        "featureFlagsUpdatedSubscriber",
        "Lcom/braze/events/FeatureFlagsUpdatedEvent;",
        "braze",
        "Lcom/braze/Braze;",
        "getBraze",
        "()Lcom/braze/Braze;",
        "requestImmediateDataFlush",
        "",
        "changeUser",
        "userName",
        "",
        "sdkAuthToken",
        "getUserId",
        "callback",
        "addAlias",
        "aliasName",
        "aliasLabel",
        "registerPushToken",
        "token",
        "logCustomEvent",
        "eventName",
        "eventProperties",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "logPurchase",
        "productIdentifier",
        "price",
        "currencyCode",
        "quantity",
        "",
        "setStringCustomUserAttribute",
        "key",
        "value",
        "setBoolCustomUserAttribute",
        "setIntCustomUserAttribute",
        "setDoubleCustomUserAttribute",
        "",
        "setDateCustomUserAttribute",
        "timeStamp",
        "incrementCustomUserAttribute",
        "incrementValue",
        "unsetCustomUserAttribute",
        "setCustomUserAttributeObjectArray",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setCustomUserAttributeArray",
        "setCustomUserAttributeObject",
        "merge",
        "addToCustomAttributeArray",
        "removeFromCustomAttributeArray",
        "setFirstName",
        "firstName",
        "setLastName",
        "lastName",
        "setEmail",
        "email",
        "setGender",
        "gender",
        "setDateOfBirth",
        "year",
        "month",
        "day",
        "setCountry",
        "country",
        "setHomeCity",
        "homeCity",
        "setPhoneNumber",
        "phoneNumber",
        "setLanguage",
        "language",
        "addToSubscriptionGroup",
        "groupId",
        "removeFromSubscriptionGroup",
        "setPushNotificationSubscriptionType",
        "subscriptionType",
        "setEmailNotificationSubscriptionType",
        "launchNewsFeed",
        "requestFeedRefresh",
        "getBanner",
        "placementId",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "requestBannersRefresh",
        "placementIds",
        "getNewsFeedCards",
        "logNewsFeedCardClicked",
        "id",
        "logNewsFeedCardImpression",
        "launchContentCards",
        "dismissAutomaticallyOnCardClick",
        "requestContentCardsRefresh",
        "getContentCards",
        "getCachedContentCards",
        "setSdkAuthenticationSignature",
        "requestPushPermission",
        "options",
        "subscribeToContentCardsUpdatedEvent",
        "subscribeToBannersUpdatedEvent",
        "subscribeToNewsFeedCardsUpdatedEvent",
        "subscribeToFeatureFlagsUpdatedEvent",
        "subscribeToSdkAuthenticationErrorEvents",
        "subscribeToPushNotificationEvents",
        "logContentCardDismissed",
        "logContentCardClicked",
        "logContentCardImpression",
        "processContentCardClickAction",
        "getCardCountForTag",
        "category",
        "cardCountTag",
        "getCardCountForCategories",
        "getUnreadCardCountForCategories",
        "wipeData",
        "disableSDK",
        "enableSDK",
        "requestLocationInitialization",
        "requestGeofences",
        "latitude",
        "",
        "longitude",
        "setLocationCustomAttribute",
        "setLastKnownLocation",
        "altitude",
        "horizontalAccuracy",
        "verticalAccuracy",
        "subscribeToInAppMessage",
        "useBrazeUI",
        "hideCurrentInAppMessage",
        "logInAppMessageClicked",
        "inAppMessageString",
        "logInAppMessageImpression",
        "(Ljava/lang/String;)Ljava/lang/Boolean;",
        "logInAppMessageButtonClicked",
        "buttonId",
        "performInAppMessageAction",
        "setAttributionData",
        "network",
        "campaign",
        "adGroup",
        "creative",
        "getDeviceId",
        "runOnUser",
        "block",
        "Lkotlin/Function1;",
        "Lcom/braze/BrazeUser;",
        "Lkotlin/ParameterName;",
        "name",
        "user",
        "addListener",
        "removeListeners",
        "count",
        "updateContentCardsIfNeeded",
        "event",
        "updateNewsFeedCardsIfNeeded",
        "getNewsFeedCardById",
        "getContentCardById",
        "getAllFeatureFlags",
        "getFeatureFlag",
        "refreshFeatureFlags",
        "logFeatureFlagImpression",
        "getFeatureFlagBooleanProperty",
        "getFeatureFlagStringProperty",
        "getFeatureFlagNumberProperty",
        "getFeatureFlagTimestampProperty",
        "getFeatureFlagJSONProperty",
        "getFeatureFlagImageProperty",
        "setAdTrackingEnabled",
        "adTrackingEnabled",
        "googleAdvertisingId",
        "setDefaultInAppMessageListener",
        "convertToMap",
        "bundle",
        "Landroid/os/Bundle;",
        "filteringKeys",
        "",
        "Companion",
        "braze_react-native-sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BANNER_CARDS_UPDATED_EVENT_NAME:Ljava/lang/String; = "bannerCardsUpdated"

.field private static final CARD_COUNT_TAG:Ljava/lang/String; = "card count"

.field private static final CONTENT_CARDS_UPDATED_EVENT_NAME:Ljava/lang/String; = "contentCardsUpdated"

.field public static final Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

.field private static final FEATURE_FLAGS_UPDATED_EVENT_NAME:Ljava/lang/String; = "featureFlagsUpdated"

.field private static final IN_APP_MESSAGE_RECEIVED_EVENT_NAME:Ljava/lang/String; = "inAppMessageReceived"

.field public static final NAME:Ljava/lang/String; = "BrazeReactBridge"

.field private static final NEWS_FEED_CARDS_UPDATED_EVENT_NAME:Ljava/lang/String; = "newsFeedCardsUpdated"

.field private static final PUSH_NOTIFICATION_EVENT_NAME:Ljava/lang/String; = "pushNotificationEvent"

.field private static final SDK_AUTH_ERROR_EVENT_NAME:Ljava/lang/String; = "sdkAuthenticationError"

.field private static final UNREAD_CARD_COUNT_TAG:Ljava/lang/String; = "unread card count"


# instance fields
.field private bannersUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BannersUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackCallLock:Ljava/lang/Object;

.field private final callbackCallMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/facebook/react/bridge/Callback;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final contentCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;"
        }
    .end annotation
.end field

.field private final contentCardsLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private contentCardsUpdatedAt:J

.field private contentCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/ContentCardsUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final currentActivity:Landroid/app/Activity;

.field private featureFlagsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeatureFlagsUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private inAppMessageDisplayOperation:Lcom/braze/ui/inappmessage/InAppMessageOperation;

.field private final newsFeedCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;"
        }
    .end annotation
.end field

.field private newsFeedCardsUpdatedAt:J

.field private newsFeedCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeedUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final newsFeedSubscriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/react/bridge/Callback;",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeedUpdatedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private pushNotificationEventSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BrazePushEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private sdkAuthErrorSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-FBpbwkGEt6aYwjYkJqyzq4JAwQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction$lambda$73$lambda$65()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$16B4_Ly4XPcafjDhN0PlwOf6HGw()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction$lambda$73$lambda$70()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$222nkxml1PyqoFHMe0RWPFHyM0o(Landroid/net/Uri;ZLcom/braze/enums/inappmessage/ClickAction;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction$lambda$73$lambda$68(Landroid/net/Uri;ZLcom/braze/enums/inappmessage/ClickAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2B6kBR4PqRCkScFbYGBZNclD4ro(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getNewsFeedCards$lambda$34(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeedUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3DWnSO3RHqZWIqgAUV93ncO-pxw()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCustomUserAttributeObject$lambda$13()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$508vn42R0gSAyNEyjx6_NqIyx6c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addAlias$lambda$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$5GADCcCnuwcx60Ty8zATIsSjtXg(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getCardCountForTag$lambda$56(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;Lcom/braze/events/FeedUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5R7GUJfOkmjj1DtvxXBrP1IaXhg(Lcom/facebook/react/bridge/Callback;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getUserId$lambda$0(Lcom/facebook/react/bridge/Callback;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$66QiyCKX5jyTyVCf-q0EF5CVe0Y(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/ContentCardsUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getContentCards$lambda$35(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/ContentCardsUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6xFSADDk_X6E6XzCoyzAYnpG5Pw(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getDeviceId$lambda$76(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7uhltyiHq-m5j_4rqQ-XDdvEJQA(Lcom/facebook/react/bridge/WritableNativeMap;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToPushNotificationEvents$lambda$50$lambda$49(Lcom/facebook/react/bridge/WritableNativeMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A2M8AnQHa54j1SW0-mLdonW0qQc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->processContentCardClickAction$lambda$52()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$B2kVFH2FcDjw8w_vXpZ_A6sK01Y(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToNewsFeedCardsUpdatedEvent$lambda$39(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeedUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DQKoAG7Cjy2agnr55kQ09NLwkUY(Lkotlin/jvm/functions/Function1;Lcom/braze/BrazeUser;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser$lambda$77(Lkotlin/jvm/functions/Function1;Lcom/braze/BrazeUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ELG70xebRpStQQRZt3lcHeXUtXw(IIILcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDateOfBirth$lambda$23(IIILcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ElPnSG0x8vlPNfYJQ_zKqaAUM7Y(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setEmailNotificationSubscriptionType$lambda$31(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Hlv9dTxBhj0I2GqntM4iiEa69U4(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCustomUserAttributeObject$lambda$15(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ICmqg1HIGnufUeXWLpXhJqtDaSY(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addToCustomAttributeArray$lambda$16(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KKKTMsTnH0vHUmvbKthQEfl-ubI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addListener$lambda$78(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KwmaouZoT20aZV0Bcmh5CpZsbh8()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToPushNotificationEvents$lambda$44()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$KxgxzpASMWOgOzTFxt-2Jh6BHwY(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->processContentCardClickAction$lambda$51(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LbF1KDNP1aBaX6u5na9b1fKXssI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDateOfBirth$lambda$23$lambda$22()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Mbnilq5XplJlN2TfiZCKi5ryy28(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setLanguage$lambda$27(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MteKNXd_P2L59zUNSiityP1goMY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setAttributionData$lambda$74()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$N1gbKz-a7J0IfoHF9Sd0CUyLyS8(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setLastName$lambda$19(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OLPDoG-4n3KE00qUV5y1taltvDk(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BannersUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToBannersUpdatedEvent$lambda$38(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BannersUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PmMG6n-c3DDYpPFhcRNSPD56xsA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToPushNotificationEvents$lambda$43()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$RxBIIES597YCYmmFFeiNq6WHmVM(Ljava/lang/String;DDLcom/facebook/react/bridge/Callback;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setLocationCustomAttribute$lambda$57(Ljava/lang/String;DDLcom/facebook/react/bridge/Callback;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UB1eaxRXLSCjF2l_Q9XB720mxng(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->incrementCustomUserAttribute$lambda$9(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VlNemDlhuN_bJ7Gry0BhSSzRKck(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setIntCustomUserAttribute$lambda$6(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VwxaGuJ4sGH6xyP0uLvi__pOmD8(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setHomeCity$lambda$25(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WxGNBE3lopysJOyDNRyZ7sBlaRs(DDDDDLcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setLastKnownLocation$lambda$61(DDDDDLcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WyCnO0Q3X2mLr3nC9-fjhW6N-F0(Lcom/braze/enums/inappmessage/ClickAction;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction$lambda$73$lambda$72(Lcom/braze/enums/inappmessage/ClickAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XSNdFuc7pWC1Mt959lrxMcIEin8()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction$lambda$73$lambda$67()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$XXH3nB83BIwVJOZXVAVnzkyz2MY(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getCardCountForTag$lambda$54(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;Lcom/braze/events/FeedUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YUqHCw_-sHKrSCulVSiTKaLAiRM(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDateCustomUserAttribute$lambda$8(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Yxq5B-wDapAp4sWSbQyqiOGhuN0(Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addAlias$lambda$3(Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bACV74vYfqadby0gB63X9d54M-U(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;[Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCustomUserAttributeArray$lambda$12(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;[Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bMNfo7h1PX_S9EQYgYKDElenX50(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction$lambda$64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bji4_x3KKmO74y7ockoNLyAsrME()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction$lambda$73$lambda$69()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$cUQfgOAHlLj7nBNB0WjWAsYVVVU(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setPushNotificationSubscriptionType$lambda$30(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dFkfnvPf-aIBtYmyggl4fXABJRI(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONArray;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCustomUserAttributeObjectArray$lambda$11(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONArray;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ewVfZ0r4dZS3Yy9_NF4y5zMg6Vo(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->unsetCustomUserAttribute$lambda$10(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h1LEbu6aG4xlrs9YlnjOZ9ev7eI(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addToSubscriptionGroup$lambda$28(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h1mHE_EHCxIago8a8kdUBztClQE(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/ContentCardsUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToContentCardsUpdatedEvent$lambda$37(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/ContentCardsUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hh_6ucuMwA-jvLZK7tlWBDWNh3w(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/Gender;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setGender$lambda$21(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/Gender;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i43mcdn5igrm1hwwp-hhwg2iBfw(Lcom/braze/models/outgoing/AttributionData;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setAttributionData$lambda$75(Lcom/braze/models/outgoing/AttributionData;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ijHMlN6NZp8BupXlUotDt7p5OnM(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setEmail$lambda$20(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jhL8IWiLcgOoeqvLbZ38PV0Hcc8(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ZLcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setBoolCustomUserAttribute$lambda$5(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ZLcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kHOVGNBu0nC2h6kgDofsb3xJCn4(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToSdkAuthenticationErrorEvents$lambda$42(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nxqUiasZ8CotAqhAjDHg-tx6RJQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addListener$lambda$79(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pZXUss_lRJf6Z6Pi9pmLA1aYr9E(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BrazePushEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToPushNotificationEvents$lambda$50(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BrazePushEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTZoNUEstzXk95JTpX7YySmTAKA(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->removeFromSubscriptionGroup$lambda$29(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qtQLtMxkMf_WPvSld7_GNOZhqAo(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->removeFromCustomAttributeArray$lambda$17(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t1Me2oMMgfVhqNhvwTF2MtAN1MU(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setFirstName$lambda$18(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t4DpXgmXpyVAKiYOd05yqXc19eM(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeatureFlagsUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToFeatureFlagsUpdatedEvent$lambda$41(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeatureFlagsUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t4sAbF_NxcY3x8iabKy2R-owkxE(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;FLcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDoubleCustomUserAttribute$lambda$7(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;FLcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tX7gdYQMcXL1nxsKM0BVd6LFk0o()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCustomUserAttributeObject$lambda$14()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$uK803hg-OVM4IaLbqlmQpfrWh5Q(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setCountry$lambda$24(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$urFGz2W0Xp_MuFv9oNRvJPiqA-0(Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->performInAppMessageAction$lambda$73$lambda$71(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wDOlpenSev405f5aQ6W8P0BAGig(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setPhoneNumber$lambda$26(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x1N95WVxRcgjhyHQIOG9zLfyLpY(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setStringCustomUserAttribute$lambda$4(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yAnLh3okr0uYBGBg3AFjVhC12pc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->addAlias$lambda$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/app/Activity;)V
    .locals 1

    const-string/jumbo v0, "reactApplicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 56
    iput-object p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->currentActivity:Landroid/app/Activity;

    .line 58
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->callbackCallLock:Ljava/lang/Object;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCards:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCards:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedSubscriberMap:Ljava/util/Map;

    .line 62
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->callbackCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    sget-object p1, Lcom/braze/ui/inappmessage/InAppMessageOperation;->DISPLAY_NOW:Lcom/braze/ui/inappmessage/InAppMessageOperation;

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->inAppMessageDisplayOperation:Lcom/braze/ui/inappmessage/InAppMessageOperation;

    .line 75
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToContentCardsUpdatedEvent()V

    .line 76
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToBannersUpdatedEvent()V

    .line 77
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToNewsFeedCardsUpdatedEvent()V

    .line 78
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToSdkAuthenticationErrorEvents()V

    .line 79
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToFeatureFlagsUpdatedEvent()V

    return-void
.end method

.method public static final synthetic access$getInAppMessageDisplayOperation$p(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)Lcom/braze/ui/inappmessage/InAppMessageOperation;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->inAppMessageDisplayOperation:Lcom/braze/ui/inappmessage/InAppMessageOperation;

    return-object p0
.end method

.method private static final addAlias$lambda$1()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "Invalid alias parameter: alias is required to be non-empty. Not adding alias."

    return-object v0
.end method

.method private static final addAlias$lambda$2()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "Invalid label parameter: label is required to be non-empty. Not adding alias."

    return-object v0
.end method

.method private static final addAlias$lambda$3(Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, p0, p1}, Lcom/braze/BrazeUser;->addAlias(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final addListener$lambda$78(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding push notification event listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final addListener$lambda$79(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding in-app message event listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final addToCustomAttributeArray$lambda$16(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->addToCustomAttributeArray(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 219
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final addToSubscriptionGroup$lambda$28(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p2, p1}, Lcom/braze/BrazeUser;->addToSubscriptionGroup(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 268
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final convertToMap(Landroid/os/Bundle;Ljava/util/Set;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableMap;"
        }
    .end annotation

    .line 944
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 945
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "keySet(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1130
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 946
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1130
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1131
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 1129
    check-cast v2, Ljava/lang/Iterable;

    .line 1132
    new-instance p2, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1134
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1135
    move-object v3, p2

    check-cast v3, Ljava/util/Map;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 947
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1135
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1137
    :cond_2
    check-cast p2, Ljava/util/Map;

    .line 1138
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 948
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-key>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 949
    :cond_3
    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    return-object v0
.end method

.method static synthetic convertToMap$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Landroid/os/Bundle;Ljava/util/Set;ILjava/lang/Object;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 943
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->convertToMap(Landroid/os/Bundle;Ljava/util/Set;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    return-object p0
.end method

.method private final getBraze()Lcom/braze/Braze;
    .locals 2

    .line 83
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    return-object v0
.end method

.method private final getCardCountForTag(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 600
    :cond_0
    sget-object v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-static {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$getCardCategoryFromString(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Ljava/lang/String;)Lcom/braze/enums/CardCategory;

    move-result-object v1

    if-eqz p1, :cond_5

    if-nez v1, :cond_1

    .line 602
    const-string v2, "all"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 616
    :cond_1
    const-string v0, "card count"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 618
    new-instance p3, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2, p1, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;)V

    goto :goto_0

    .line 635
    :cond_2
    const-string/jumbo v0, "unread card count"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 637
    new-instance p3, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p2, p1, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda10;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    .line 657
    iget-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedSubscriberMap:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/braze/Braze;->subscribeToFeedUpdates(Lcom/braze/events/IEventSubscriber;)V

    .line 659
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/Braze;->requestFeedRefreshFromCache()V

    :cond_4
    return-void

    .line 605
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid card category "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", could not retrieve"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p2

    .line 603
    invoke-static/range {v0 .. v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getCardCountForTag$lambda$54(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 7

    const-string/jumbo v0, "newsFeedUpdatedEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->callbackCallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->callbackCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->callbackCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v1, "all"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 623
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p4}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 625
    :cond_0
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p4, p3}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount(Lcom/braze/enums/CardCategory;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 628
    :cond_1
    :goto_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    monitor-exit v0

    .line 630
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object p2

    iget-object p3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedSubscriberMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/braze/events/IEventSubscriber;

    const-class p4, Lcom/braze/events/FeedUpdatedEvent;

    invoke-virtual {p2, p3, p4}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 631
    iget-object p0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedSubscriberMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    .line 619
    monitor-exit v0

    throw p0
.end method

.method private static final getCardCountForTag$lambda$56(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 7

    const-string/jumbo v0, "newsFeedUpdatedEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->callbackCallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->callbackCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->callbackCallMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string v1, "all"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 642
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p4}, Lcom/braze/events/FeedUpdatedEvent;->getUnreadCardCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 644
    :cond_0
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p4, p3}, Lcom/braze/events/FeedUpdatedEvent;->getUnreadCardCount(Lcom/braze/enums/CardCategory;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 647
    :cond_1
    :goto_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    monitor-exit v0

    .line 649
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object p2

    iget-object p3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedSubscriberMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/braze/events/IEventSubscriber;

    const-class p4, Lcom/braze/events/FeedUpdatedEvent;

    invoke-virtual {p2, p3, p4}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 650
    iget-object p0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedSubscriberMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    .line 638
    monitor-exit v0

    throw p0
.end method

.method private final getContentCardById(Ljava/lang/String;)Lcom/braze/models/cards/Card;
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCards:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 1125
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/braze/models/cards/Card;

    .line 868
    invoke-virtual {v3}, Lcom/braze/models/cards/Card;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1126
    :goto_0
    check-cast v2, Lcom/braze/models/cards/Card;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private static final getContentCards$lambda$35(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/ContentCardsUpdatedEvent;)V
    .locals 1

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Lcom/braze/events/ContentCardsUpdatedEvent;->getAllCards()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/reactbridge/ContentCardUtilKt;->mapContentCards(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 355
    invoke-direct {p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->updateContentCardsIfNeeded(Lcom/braze/events/ContentCardsUpdatedEvent;)V

    return-void
.end method

.method private static final getDeviceId$lambda$76(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final getNewsFeedCardById(Ljava/lang/String;)Lcom/braze/models/cards/Card;
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCards:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1123
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/braze/models/cards/Card;

    .line 864
    invoke-virtual {v2}, Lcom/braze/models/cards/Card;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1124
    :goto_0
    check-cast v1, Lcom/braze/models/cards/Card;

    return-object v1
.end method

.method private static final getNewsFeedCards$lambda$34(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Lcom/braze/events/FeedUpdatedEvent;->getFeedCards()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFeedCards(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/braze/reactbridge/ContentCardUtilKt;->mapContentCards(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 329
    invoke-direct {p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->updateNewsFeedCardsIfNeeded(Lcom/braze/events/FeedUpdatedEvent;)V

    return-void
.end method

.method private static final getUserId$lambda$0(Lcom/facebook/react/bridge/Callback;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/braze/BrazeUser;->getUserId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object p1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    const/4 v0, 0x0

    const-string v1, "User ID not found."

    invoke-static {p1, p0, v0, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$reportResult(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    sget-object v2, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p1}, Lcom/braze/BrazeUser;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 96
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final incrementCustomUserAttribute$lambda$9(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->incrementCustomUserAttribute(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 174
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final performInAppMessageAction$lambda$64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing in-app message action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final performInAppMessageAction$lambda$73$lambda$65()Ljava/lang/String;
    .locals 1

    .line 728
    const-string v0, "Can\'t perform click action because the cached activity is null."

    return-object v0
.end method

.method private static final performInAppMessageAction$lambda$73$lambda$67()Ljava/lang/String;
    .locals 1

    .line 737
    const-string v0, "Cannot perform IAM action because button was not null but message is not InAppMessageImmersiveBase"

    return-object v0
.end method

.method private static final performInAppMessageAction$lambda$73$lambda$68(Landroid/net/Uri;ZLcom/braze/enums/inappmessage/ClickAction;)Ljava/lang/String;
    .locals 2

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GOT ACTION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final performInAppMessageAction$lambda$73$lambda$69()Ljava/lang/String;
    .locals 1

    .line 773
    const-string v0, "clickUri is null, not performing click action"

    return-object v0
.end method

.method private static final performInAppMessageAction$lambda$73$lambda$70()Ljava/lang/String;
    .locals 1

    .line 782
    const-string/jumbo v0, "reactApplicationContext instance not active, not performing click action"

    return-object v0
.end method

.method private static final performInAppMessageAction$lambda$73$lambda$71(Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 2

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Performing gotoUri "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final performInAppMessageAction$lambda$73$lambda$72(Lcom/braze/enums/inappmessage/ClickAction;)Ljava/lang/String;
    .locals 2

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processContentCardClickAction$lambda$51(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing content card action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final processContentCardClickAction$lambda$52()Ljava/lang/String;
    .locals 1

    .line 576
    const-string v0, "Card URL is null, returning null for getUriActionForCard"

    return-object v0
.end method

.method private static final removeFromCustomAttributeArray$lambda$17(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->removeFromCustomAttributeArray(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 225
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeFromSubscriptionGroup$lambda$29(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p2, p1}, Lcom/braze/BrazeUser;->removeFromSubscriptionGroup(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 274
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final runOnUser(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/braze/BrazeUser;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 815
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    new-instance v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda50;

    invoke-direct {v1, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda50;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/braze/Braze;->getCurrentUser(Lcom/braze/events/IValueCallback;)V

    return-void
.end method

.method private static final runOnUser$lambda$77(Lkotlin/jvm/functions/Function1;Lcom/braze/BrazeUser;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final setAttributionData$lambda$74()Ljava/lang/String;
    .locals 1

    .line 803
    const-string v0, "Attribution data arguments were null. Not logging."

    return-object v0
.end method

.method private static final setAttributionData$lambda$75(Lcom/braze/models/outgoing/AttributionData;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1, p0}, Lcom/braze/BrazeUser;->setAttributionData(Lcom/braze/models/outgoing/AttributionData;)Z

    .line 809
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setBoolCustomUserAttribute$lambda$5(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ZLcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 150
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setCountry$lambda$24(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, p0}, Lcom/braze/BrazeUser;->setCountry(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setCustomUserAttributeArray$lambda$12(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;[Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->setCustomAttributeArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 198
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setCustomUserAttributeObject$lambda$13()Ljava/lang/String;
    .locals 1

    .line 203
    const-string v0, "Key was null. Not logging setCustomUserAttributeObject."

    return-object v0
.end method

.method private static final setCustomUserAttributeObject$lambda$14()Ljava/lang/String;
    .locals 1

    .line 207
    const-string v0, "Value was null. Not logging setCustomUserAttributeObject."

    return-object v0
.end method

.method private static final setCustomUserAttributeObject$lambda$15(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p4, p1, p2, p3}, Lcom/braze/BrazeUser;->setCustomAttribute(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 213
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setCustomUserAttributeObjectArray$lambda$11(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONArray;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 187
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setDateCustomUserAttribute$lambda$8(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    int-to-long v2, p2

    invoke-virtual {p3, p1, v2, v3}, Lcom/braze/BrazeUser;->setCustomUserAttributeToSecondsFromEpoch(Ljava/lang/String;J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 168
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setDateOfBirth$lambda$23(IIILcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 8

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/braze/enums/Month;->Companion:Lcom/braze/enums/Month$Companion;

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lcom/braze/enums/Month$Companion;->getMonth(I)Lcom/braze/enums/Month;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p4, p1, p0, p2}, Lcom/braze/BrazeUser;->setDateOfBirth(ILcom/braze/enums/Month;I)Z

    goto :goto_0

    .line 250
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda48;

    invoke-direct {v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda48;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 255
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setDateOfBirth$lambda$23$lambda$22()Ljava/lang/String;
    .locals 1

    .line 251
    const-string v0, "Invalid date of birth parameter: month is required to be within specified range. Not setting date of birth."

    return-object v0
.end method

.method private final setDefaultInAppMessageListener()V
    .locals 2

    .line 929
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    .line 930
    new-instance v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$setDefaultInAppMessageListener$1;

    invoke-direct {v1, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$setDefaultInAppMessageListener$1;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    check-cast v1, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    .line 929
    invoke-virtual {v0, v1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->setCustomInAppMessageManagerListener(Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;)V

    return-void
.end method

.method private static final setDoubleCustomUserAttribute$lambda$7(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;FLcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;F)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 162
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setEmail$lambda$20(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1, p0}, Lcom/braze/BrazeUser;->setEmail(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setEmailNotificationSubscriptionType$lambda$31(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p2, p1}, Lcom/braze/BrazeUser;->setEmailNotificationSubscriptionType(Lcom/braze/enums/NotificationSubscriptionType;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 302
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setFirstName$lambda$18(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1, p0}, Lcom/braze/BrazeUser;->setFirstName(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setGender$lambda$21(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/Gender;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p2, p1}, Lcom/braze/BrazeUser;->setGender(Lcom/braze/enums/Gender;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setHomeCity$lambda$25(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1, p0}, Lcom/braze/BrazeUser;->setHomeCity(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setIntCustomUserAttribute$lambda$6(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 156
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setLanguage$lambda$27(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, p0}, Lcom/braze/BrazeUser;->setLanguage(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setLastKnownLocation$lambda$61(DDDDDLcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 10

    const-string v0, "it"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v7, v0

    .line 691
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpg-double v2, v8, v4

    if-gez v2, :cond_1

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object v8, v0

    .line 692
    :goto_1
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    if-nez v8, :cond_2

    move-object v6, v3

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    move-object/from16 v1, p10

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    .line 693
    invoke-virtual/range {v1 .. v8}, Lcom/braze/BrazeUser;->setLastKnownLocation(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 694
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final setLastName$lambda$19(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1, p0}, Lcom/braze/BrazeUser;->setLastName(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setLocationCustomAttribute$lambda$57(Ljava/lang/String;DDLcom/facebook/react/bridge/Callback;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 681
    invoke-virtual/range {v0 .. v5}, Lcom/braze/BrazeUser;->setLocationCustomAttribute(Ljava/lang/String;DD)V

    .line 684
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p5

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 685
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setPhoneNumber$lambda$26(Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, p0}, Lcom/braze/BrazeUser;->setPhoneNumber(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setPushNotificationSubscriptionType$lambda$30(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p2, p1}, Lcom/braze/BrazeUser;->setPushNotificationSubscriptionType(Lcom/braze/enums/NotificationSubscriptionType;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 288
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStringCustomUserAttribute$lambda$4(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 144
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final subscribeToBannersUpdatedEvent()V
    .locals 5

    .line 396
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->bannersUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    const/4 v1, 0x0

    const-string v2, "bannersUpdatedSubscriber"

    if-eqz v0, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    .line 398
    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->bannersUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    .line 399
    :cond_0
    const-class v4, Lcom/braze/events/BannersUpdatedEvent;

    .line 397
    invoke-virtual {v0, v3, v4}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 402
    :cond_1
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda0;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    iput-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->bannersUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    .line 412
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->bannersUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/braze/Braze;->subscribeToBannersUpdates(Lcom/braze/events/IEventSubscriber;)V

    return-void
.end method

.method private static final subscribeToBannersUpdatedEvent$lambda$38(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BannersUpdatedEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 404
    invoke-virtual {p1}, Lcom/braze/events/BannersUpdatedEvent;->getBanners()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/braze/reactbridge/BannerUtilKt;->mapBanners(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReadableArray;

    const-string v1, "banners"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 405
    iget-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 406
    iget-object p0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 407
    const-class p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 408
    const-string p1, "bannerCardsUpdated"

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final subscribeToContentCardsUpdatedEvent()V
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    const/4 v1, 0x0

    const-string v2, "contentCardsUpdatedSubscriber"

    if-eqz v0, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    .line 377
    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    .line 378
    :cond_0
    const-class v4, Lcom/braze/events/ContentCardsUpdatedEvent;

    .line 376
    invoke-virtual {v0, v3, v4}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 381
    :cond_1
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda4;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    iput-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    .line 392
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/braze/Braze;->subscribeToContentCardsUpdates(Lcom/braze/events/IEventSubscriber;)V

    return-void
.end method

.method private static final subscribeToContentCardsUpdatedEvent$lambda$37(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/ContentCardsUpdatedEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Lcom/braze/events/ContentCardsUpdatedEvent;->getAllCards()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/reactbridge/ContentCardUtilKt;->mapContentCards(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    const-string v2, "cards"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 384
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 386
    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 387
    const-string v2, "contentCardsUpdated"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    :cond_0
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->updateContentCardsIfNeeded(Lcom/braze/events/ContentCardsUpdatedEvent;)V

    return-void
.end method

.method private final subscribeToFeatureFlagsUpdatedEvent()V
    .locals 5

    .line 436
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->featureFlagsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    const/4 v1, 0x0

    const-string v2, "featureFlagsUpdatedSubscriber"

    if-eqz v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    .line 438
    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->featureFlagsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    .line 439
    :cond_0
    const-class v4, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    .line 437
    invoke-virtual {v0, v3, v4}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 442
    :cond_1
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda16;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    iput-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->featureFlagsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    .line 455
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->featureFlagsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/braze/Braze;->subscribeToFeatureFlagsUpdates(Lcom/braze/events/IEventSubscriber;)V

    return-void
.end method

.method private static final subscribeToFeatureFlagsUpdatedEvent$lambda$41(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeatureFlagsUpdatedEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 444
    invoke-virtual {p1}, Lcom/braze/events/FeatureFlagsUpdatedEvent;->getFeatureFlags()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/models/FeatureFlag;

    .line 445
    invoke-static {v1}, Lcom/braze/reactbridge/FeatureFlagUtilKt;->convertFeatureFlag(Lcom/braze/models/FeatureFlag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 449
    iget-object p0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 450
    const-class p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 451
    const-string p1, "featureFlagsUpdated"

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final subscribeToNewsFeedCardsUpdatedEvent()V
    .locals 5

    .line 416
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    const/4 v1, 0x0

    const-string/jumbo v2, "newsFeedCardsUpdatedSubscriber"

    if-eqz v0, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    .line 418
    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    .line 419
    :cond_0
    const-class v4, Lcom/braze/events/FeedUpdatedEvent;

    .line 417
    invoke-virtual {v0, v3, v4}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 422
    :cond_1
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda55;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    iput-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    .line 432
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCardsUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/braze/Braze;->subscribeToFeedUpdates(Lcom/braze/events/IEventSubscriber;)V

    return-void
.end method

.method private static final subscribeToNewsFeedCardsUpdatedEvent$lambda$39(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lcom/braze/events/FeedUpdatedEvent;->lastUpdatedInSecondsFromEpoch()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsUpdatedAt:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 426
    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 427
    const-string/jumbo v2, "newsFeedCardsUpdated"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    :cond_1
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->updateNewsFeedCardsIfNeeded(Lcom/braze/events/FeedUpdatedEvent;)V

    return-void
.end method

.method private final subscribeToPushNotificationEvents()V
    .locals 9

    .line 482
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda32;

    invoke-direct {v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda32;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda34;

    invoke-direct {v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda34;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->pushNotificationEventSubscriber:Lcom/braze/events/IEventSubscriber;

    const/4 v1, 0x0

    const-string/jumbo v2, "pushNotificationEventSubscriber"

    if-eqz v0, :cond_2

    .line 488
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    .line 489
    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->pushNotificationEventSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    .line 490
    :cond_1
    const-class v4, Lcom/braze/events/BrazePushEvent;

    .line 488
    invoke-virtual {v0, v3, v4}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 494
    :cond_2
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda35;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    iput-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->pushNotificationEventSubscriber:Lcom/braze/events/IEventSubscriber;

    .line 552
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->pushNotificationEventSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/braze/Braze;->subscribeToPushNotificationEvents(Lcom/braze/events/IEventSubscriber;)V

    return-void
.end method

.method private static final subscribeToPushNotificationEvents$lambda$43()Ljava/lang/String;
    .locals 1

    .line 482
    const-string/jumbo v0, "subscribeToPushNotificationEvents called"

    return-object v0
.end method

.method private static final subscribeToPushNotificationEvents$lambda$44()Ljava/lang/String;
    .locals 1

    .line 484
    const-string v0, "Cannot call subscribeToPushNotificationEvents without an active react instance"

    return-object v0
.end method

.method private static final subscribeToPushNotificationEvents$lambda$50(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BrazePushEvent;)V
    .locals 12

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/braze/events/BrazePushEvent;->getEventType()Lcom/braze/enums/BrazePushEventType;

    move-result-object v0

    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/braze/enums/BrazePushEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    return-void

    .line 497
    :cond_0
    const-string/jumbo v0, "push_opened"

    goto :goto_0

    .line 496
    :cond_1
    const-string/jumbo v0, "push_received"

    .line 500
    :goto_0
    invoke-virtual {p1}, Lcom/braze/events/BrazePushEvent;->getNotificationPayload()Lcom/braze/models/push/BrazeNotificationPayload;

    move-result-object p1

    .line 502
    new-instance v3, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v3}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 503
    const-string/jumbo v4, "payload_type"

    invoke-virtual {v3, v4, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v4, "url"

    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getDeeplink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v4, "title"

    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getTitleText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v4, "body"

    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string/jumbo v4, "summary_text"

    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getSummaryText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationBadgeNumber()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v5, "badge_count"

    invoke-virtual {v3, v5, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    .line 509
    :cond_2
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "braze_push_received_timestamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 510
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-nez v5, :cond_3

    move-object v4, v6

    :cond_3
    if-eqz v4, :cond_4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 513
    const-string/jumbo v7, "timestamp"

    long-to-double v4, v4

    invoke-virtual {v3, v7, v4, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 517
    :cond_4
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ab_use_webview"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 515
    const-string/jumbo v5, "use_webview"

    invoke-virtual {v3, v5, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    .line 520
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getTitleText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v5

    .line 519
    :goto_1
    const-string v7, "is_silent"

    invoke-virtual {v3, v7, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    .line 524
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->isUninstallTrackingPush()Z

    move-result v4

    if-nez v4, :cond_7

    .line 525
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getShouldSyncGeofences()Z

    move-result v4

    if-nez v4, :cond_7

    .line 526
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getShouldRefreshFeatureFlags()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v2, v5

    .line 522
    :cond_7
    :goto_2
    const-string v4, "is_braze_internal"

    invoke-virtual {v3, v4, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    .line 528
    const-string v2, "image_url"

    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v2, v6, v1, v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->convertToMap$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Landroid/os/Bundle;Ljava/util/Set;ILjava/lang/Object;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v3, v2, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 532
    const-string/jumbo v1, "push_event_type"

    invoke-virtual {v3, v1, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "deeplink"

    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "content_text"

    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "raw_android_push_data"

    invoke-virtual {v3, v1, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBrazeExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appboy_image_url"

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->convertToMap(Landroid/os/Bundle;Ljava/util/Set;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 543
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBrazeExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->convertToMap(Landroid/os/Bundle;Ljava/util/Set;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    .line 544
    const-string v1, "braze_properties"

    invoke-virtual {v3, v1, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 546
    const-string p1, "kvp_data"

    invoke-virtual {v3, p1, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 548
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v9, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda40;

    invoke-direct {v9, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda40;-><init>(Lcom/facebook/react/bridge/WritableNativeMap;)V

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 549
    iget-object p0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 550
    const-string/jumbo p1, "pushNotificationEvent"

    invoke-interface {p0, p1, v3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToPushNotificationEvents$lambda$50$lambda$49(Lcom/facebook/react/bridge/WritableNativeMap;)Ljava/lang/String;
    .locals 2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending push notification event with data "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final subscribeToSdkAuthenticationErrorEvents()V
    .locals 5

    .line 459
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->sdkAuthErrorSubscriber:Lcom/braze/events/IEventSubscriber;

    const/4 v1, 0x0

    const-string/jumbo v2, "sdkAuthErrorSubscriber"

    if-eqz v0, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    .line 461
    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->sdkAuthErrorSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    .line 462
    :cond_0
    const-class v4, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    .line 460
    invoke-virtual {v0, v3, v4}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 465
    :cond_1
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda3;-><init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    iput-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->sdkAuthErrorSubscriber:Lcom/braze/events/IEventSubscriber;

    .line 478
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->sdkAuthErrorSubscriber:Lcom/braze/events/IEventSubscriber;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/braze/Braze;->subscribeToSdkAuthenticationFailures(Lcom/braze/events/IEventSubscriber;)V

    return-void
.end method

.method private static final subscribeToSdkAuthenticationErrorEvents$lambda$42(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;)V
    .locals 3

    const-string v0, "errorEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 470
    const-string v1, "error_code"

    invoke-virtual {p1}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string/jumbo v1, "user_id"

    invoke-virtual {p1}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v1, "original_signature"

    invoke-virtual {p1}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "error_reason"

    invoke-virtual {p1}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->getErrorReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object p0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 475
    const-class p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 476
    const-string/jumbo p1, "sdkAuthenticationError"

    invoke-interface {p0, p1, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static final unsetCustomUserAttribute$lambda$10(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/BrazeUser;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-virtual {p2, p1}, Lcom/braze/BrazeUser;->unsetCustomUserAttribute(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 180
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final updateContentCardsIfNeeded(Lcom/braze/events/ContentCardsUpdatedEvent;)V
    .locals 4

    .line 843
    invoke-virtual {p1}, Lcom/braze/events/ContentCardsUpdatedEvent;->getTimestampSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsUpdatedAt:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 845
    :try_start_0
    invoke-virtual {p1}, Lcom/braze/events/ContentCardsUpdatedEvent;->getTimestampSeconds()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsUpdatedAt:J

    .line 846
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 847
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCards:Ljava/util/List;

    invoke-virtual {p1}, Lcom/braze/events/ContentCardsUpdatedEvent;->getAllCards()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private final updateNewsFeedCardsIfNeeded(Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 4

    .line 856
    invoke-virtual {p1}, Lcom/braze/events/FeedUpdatedEvent;->lastUpdatedInSecondsFromEpoch()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCardsUpdatedAt:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 857
    invoke-virtual {p1}, Lcom/braze/events/FeedUpdatedEvent;->lastUpdatedInSecondsFromEpoch()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCardsUpdatedAt:J

    .line 858
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 859
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->newsFeedCards:Ljava/util/List;

    invoke-virtual {p1}, Lcom/braze/events/FeedUpdatedEvent;->getFeedCards()Ljava/util/List;

    move-result-object p1

    const-string v1, "getFeedCards(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "aliasName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aliasLabel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda13;

    invoke-direct {v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda13;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 107
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda14;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 114
    :cond_1
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final addListener(Ljava/lang/String;)V
    .locals 9

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    const-string/jumbo v0, "pushNotificationEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda62;

    invoke-direct {v6, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda62;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 824
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->subscribeToPushNotificationEvents()V

    goto :goto_0

    .line 826
    :cond_0
    const-string v0, "inAppMessageReceived"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getInAppMessageManagerListener()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    move-result-object v0

    instance-of v0, v0, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageManagerListener;

    if-eqz v0, :cond_1

    .line 828
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 829
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDefaultInAppMessageListener()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final addToCustomAttributeArray(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda54;

    invoke-direct {v0, p3, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda54;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final addToSubscriptionGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda7;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "userName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/braze/Braze;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final disableSDK()V
    .locals 2

    .line 671
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->disableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public final enableSDK()V
    .locals 2

    .line 673
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->enableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public final getAllFeatureFlags(Lcom/facebook/react/bridge/Promise;)V
    .locals 3

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->getAllFeatureFlags()Ljava/util/List;

    move-result-object v0

    .line 873
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 874
    check-cast v0, Ljava/lang/Iterable;

    .line 1127
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/models/FeatureFlag;

    .line 875
    invoke-static {v2}, Lcom/braze/reactbridge/FeatureFlagUtilKt;->convertFeatureFlag(Lcom/braze/models/FeatureFlag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 877
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBanner(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string/jumbo v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->getBanner(Ljava/lang/String;)Lcom/braze/models/Banner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    invoke-static {p1}, Lcom/braze/reactbridge/BannerUtilKt;->mapBanner(Lcom/braze/models/Banner;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 318
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getCachedContentCards(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCardsLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->contentCards:Ljava/util/List;

    invoke-static {v1}, Lcom/braze/reactbridge/ContentCardUtilKt;->mapContentCards(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 363
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final getCardCountForCategories(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    const-string v0, "card count"

    invoke-direct {p0, p1, p2, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getCardCountForTag(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public final getContentCards(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    new-instance v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    check-cast v1, Lcom/braze/events/IEventSubscriber;

    invoke-virtual {v0, v1}, Lcom/braze/Braze;->subscribeToContentCardsUpdates(Lcom/braze/events/IEventSubscriber;)V

    .line 357
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/Braze;->requestContentCardsRefresh()V

    return-void
.end method

.method public final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getDeviceId(Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    new-instance v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda52;

    invoke-direct {v1, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda52;-><init>(Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/braze/Braze;->getDeviceIdAsync(Lcom/braze/events/IValueCallback;)V

    return-void
.end method

.method public final getFeatureFlag(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 883
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 885
    :cond_0
    invoke-static {p1}, Lcom/braze/reactbridge/FeatureFlagUtilKt;->convertFeatureFlag(Lcom/braze/models/FeatureFlag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getFeatureFlagBooleanProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 898
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/braze/models/FeatureFlag;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getFeatureFlagImageProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/braze/models/FeatureFlag;->getImageProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getFeatureFlagJSONProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/braze/models/FeatureFlag;->getJSONProperty(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-static {p2, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$jsonToNativeMap(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lorg/json/JSONObject;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 917
    :goto_0
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getFeatureFlagNumberProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/braze/models/FeatureFlag;->getNumberProperty(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getFeatureFlagStringProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/braze/models/FeatureFlag;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getFeatureFlagTimestampProperty(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/braze/models/FeatureFlag;->getTimestampProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 912
    :goto_0
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getNewsFeedCards(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string/jumbo v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    new-instance v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda46;

    invoke-direct {v1, p1, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda46;-><init>(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    check-cast v1, Lcom/braze/events/IEventSubscriber;

    invoke-virtual {v0, v1}, Lcom/braze/Braze;->subscribeToFeedUpdates(Lcom/braze/events/IEventSubscriber;)V

    .line 331
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/Braze;->requestFeedRefresh()V

    return-void
.end method

.method public final getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method public final getUnreadCardCountForCategories(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v0, "unread card count"

    invoke-direct {p0, p1, p2, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getCardCountForTag(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public final getUserId(Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda49;

    invoke-direct {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda49;-><init>(Lcom/facebook/react/bridge/Callback;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final hideCurrentInAppMessage()V
    .locals 2

    .line 706
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->hideCurrentlyDisplayingInAppMessage(Z)V

    return-void
.end method

.method public final incrementCustomUserAttribute(Ljava/lang/String;ILcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda42;

    invoke-direct {v0, p3, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda42;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final launchContentCards(Z)V
    .locals 2

    .line 343
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->currentActivity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/braze/ui/activities/ContentCardsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x34000000

    .line 344
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final launchNewsFeed()V
    .locals 3

    .line 306
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->currentActivity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/braze/ui/activities/BrazeFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34000000

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final logContentCardClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getContentCardById(Ljava/lang/String;)Lcom/braze/models/cards/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->logClick()Z

    :cond_0
    return-void
.end method

.method public final logContentCardDismissed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getContentCardById(Ljava/lang/String;)Lcom/braze/models/cards/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/braze/models/cards/Card;->setDismissed(Z)V

    :cond_0
    return-void
.end method

.method public final logContentCardImpression(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getContentCardById(Ljava/lang/String;)Lcom/braze/models/cards/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->logImpression()Z

    :cond_0
    return-void
.end method

.method public final logCustomEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-static {v1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$populateEventPropertiesFromReadableMap(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/ReadableMap;)Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/braze/Braze;->logCustomEvent(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public final logFeatureFlagImpression(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->logFeatureFlagImpression(Ljava/lang/String;)V

    return-void
.end method

.method public final logInAppMessageButtonClicked(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "inAppMessageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->deserializeInAppMessageString(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;

    move-result-object p1

    .line 716
    instance-of v0, p1, Lcom/braze/models/inappmessage/IInAppMessageImmersive;

    if-eqz v0, :cond_2

    .line 717
    check-cast p1, Lcom/braze/models/inappmessage/IInAppMessageImmersive;

    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessageImmersive;->getMessageButtons()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1118
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/braze/models/inappmessage/MessageButton;

    .line 718
    invoke-virtual {v2}, Lcom/braze/models/inappmessage/MessageButton;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/braze/models/inappmessage/MessageButton;

    if-eqz v1, :cond_2

    .line 719
    invoke-interface {p1, v1}, Lcom/braze/models/inappmessage/IInAppMessageImmersive;->logButtonClick(Lcom/braze/models/inappmessage/MessageButton;)Z

    :cond_2
    return-void
.end method

.method public final logInAppMessageClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "inAppMessageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->deserializeInAppMessageString(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->logClick()Z

    :cond_0
    return-void
.end method

.method public final logInAppMessageImpression(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "inAppMessageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->deserializeInAppMessageString(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->logImpression()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final logNewsFeedCardClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getNewsFeedCardById(Ljava/lang/String;)Lcom/braze/models/cards/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->logClick()Z

    :cond_0
    return-void
.end method

.method public final logNewsFeedCardImpression(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getNewsFeedCardById(Ljava/lang/String;)Lcom/braze/models/cards/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->logImpression()Z

    :cond_0
    return-void
.end method

.method public final logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 7

    const-string/jumbo v0, "productIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v1

    .line 136
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 138
    sget-object p2, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-static {p2, p5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$populateEventPropertiesFromReadableMap(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/ReadableMap;)Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object v6

    move-object v2, p1

    move-object v3, p3

    move v5, p4

    .line 133
    invoke-virtual/range {v1 .. v6}, Lcom/braze/Braze;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public final performInAppMessageAction(Ljava/lang/String;I)V
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p2

    const-string v0, "inAppMessageString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda24;

    invoke-direct {v5, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 725
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->deserializeInAppMessageString(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 726
    iget-object v11, v8, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->currentActivity:Landroid/app/Activity;

    if-nez v11, :cond_0

    .line 728
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda25;

    invoke-direct {v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda25;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ltz v10, :cond_4

    .line 734
    instance-of v1, v9, Lcom/braze/models/inappmessage/InAppMessageImmersiveBase;

    if-eqz v1, :cond_3

    .line 735
    move-object v1, v9

    check-cast v1, Lcom/braze/models/inappmessage/InAppMessageImmersiveBase;

    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageImmersiveBase;->getMessageButtons()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1121
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/braze/models/inappmessage/MessageButton;

    .line 735
    invoke-virtual {v3}, Lcom/braze/models/inappmessage/MessageButton;->getId()I

    move-result v3

    if-ne v3, v10, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 1122
    :goto_0
    check-cast v2, Lcom/braze/models/inappmessage/MessageButton;

    goto :goto_1

    .line 737
    :cond_3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda26;

    invoke-direct {v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda26;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    :cond_4
    move-object v2, v0

    :goto_1
    if-gez v10, :cond_5

    .line 743
    invoke-interface {v9}, Lcom/braze/models/inappmessage/IInAppMessage;->getClickAction()Lcom/braze/enums/inappmessage/ClickAction;

    move-result-object v1

    :goto_2
    move-object v12, v1

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    .line 745
    invoke-virtual {v2}, Lcom/braze/models/inappmessage/MessageButton;->getClickAction()Lcom/braze/enums/inappmessage/ClickAction;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v12, v0

    :goto_3
    if-gez v10, :cond_8

    .line 749
    invoke-interface {v9}, Lcom/braze/models/inappmessage/IInAppMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    :cond_7
    :goto_4
    move-object v13, v0

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_7

    .line 751
    invoke-virtual {v2}, Lcom/braze/models/inappmessage/MessageButton;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :goto_5
    if-gez v10, :cond_9

    .line 755
    invoke-interface {v9}, Lcom/braze/models/inappmessage/IInAppMessage;->getOpenUriInWebView()Z

    move-result v0

    :goto_6
    move v10, v0

    goto :goto_7

    :cond_9
    if-eqz v2, :cond_a

    .line 757
    invoke-virtual {v2}, Lcom/braze/models/inappmessage/MessageButton;->getOpenUriInWebview()Z

    move-result v0

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    .line 760
    :goto_7
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;

    invoke-direct {v5, v13, v10, v12}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;-><init>(Landroid/net/Uri;ZLcom/braze/enums/inappmessage/ClickAction;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-nez v12, :cond_b

    const/4 v0, -0x1

    goto :goto_8

    .line 762
    :cond_b
    sget-object v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v12}, Lcom/braze/enums/inappmessage/ClickAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_8
    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 790
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda31;

    invoke-direct {v5, v12}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda31;-><init>(Lcom/braze/enums/inappmessage/ClickAction;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_9

    :cond_c
    if-nez v13, :cond_d

    .line 773
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda28;

    invoke-direct {v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda28;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 776
    :cond_d
    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v0

    .line 777
    invoke-interface {v9}, Lcom/braze/models/inappmessage/IInAppMessage;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/support/BundleUtils;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    .line 778
    sget-object v2, Lcom/braze/enums/Channel;->INAPP_MESSAGE:Lcom/braze/enums/Channel;

    .line 776
    invoke-interface {v0, v13, v1, v10, v2}, Lcom/braze/IBrazeDeeplinkHandler;->createUriActionFromUri(Landroid/net/Uri;Landroid/os/Bundle;ZLcom/braze/enums/Channel;)Lcom/braze/ui/actions/UriAction;

    move-result-object v9

    .line 781
    iget-object v0, v8, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    if-nez v0, :cond_e

    .line 782
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda29;

    invoke-direct {v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda29;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 785
    :cond_e
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda30;

    invoke-direct {v5, v13, v10}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda30;-><init>(Landroid/net/Uri;Z)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 786
    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v0

    iget-object v1, v8, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1, v9}, Lcom/braze/IBrazeDeeplinkHandler;->gotoUri(Landroid/content/Context;Lcom/braze/ui/actions/UriAction;)V

    goto :goto_9

    .line 764
    :cond_f
    new-instance v0, Lcom/braze/ui/actions/NewsfeedAction;

    .line 765
    invoke-interface {v9}, Lcom/braze/models/inappmessage/IInAppMessage;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/support/BundleUtils;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    .line 766
    sget-object v2, Lcom/braze/enums/Channel;->INAPP_MESSAGE:Lcom/braze/enums/Channel;

    .line 764
    invoke-direct {v0, v1, v2}, Lcom/braze/ui/actions/NewsfeedAction;-><init>(Landroid/os/Bundle;Lcom/braze/enums/Channel;)V

    .line 768
    sget-object v1, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v1}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v1

    .line 769
    check-cast v11, Landroid/content/Context;

    invoke-interface {v1, v11, v0}, Lcom/braze/IBrazeDeeplinkHandler;->gotoNewsFeed(Landroid/content/Context;Lcom/braze/ui/actions/NewsfeedAction;)V

    :cond_10
    :goto_9
    return-void
.end method

.method public final processContentCardClickAction(Ljava/lang/String;)V
    .locals 10

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda38;

    invoke-direct {v6, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda38;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 569
    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getContentCardById(Ljava/lang/String;)Lcom/braze/models/cards/Card;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 570
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 571
    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 576
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda39;

    invoke-direct {v7}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda39;-><init>()V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 579
    :cond_2
    sget-object v2, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v2}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v2

    .line 582
    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->getOpenUriInWebView()Z

    move-result v3

    .line 583
    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->getChannel()Lcom/braze/enums/Channel;

    move-result-object p1

    .line 579
    invoke-interface {v2, v1, v0, v3, p1}, Lcom/braze/IBrazeDeeplinkHandler;->createUriActionFromUrlString(Ljava/lang/String;Landroid/os/Bundle;ZLcom/braze/enums/Channel;)Lcom/braze/ui/actions/UriAction;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 586
    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/braze/IBrazeDeeplinkHandler;->gotoUri(Landroid/content/Context;Lcom/braze/ui/actions/UriAction;)V

    :cond_3
    return-void
.end method

.method public final refreshFeatureFlags()V
    .locals 1

    .line 890
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->refreshFeatureFlags()V

    return-void
.end method

.method public final registerPushToken(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->setRegisteredPushToken(Ljava/lang/String;)V

    return-void
.end method

.method public final removeFromCustomAttributeArray(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda6;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final removeFromSubscriptionGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda11;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final removeListeners(I)V
    .locals 0

    return-void
.end method

.method public final requestBannersRefresh(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2

    const-string/jumbo v0, "placementIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 1115
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 322
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1116
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1117
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 323
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/braze/Braze;->requestBannersRefresh(Ljava/util/List;)V

    return-void
.end method

.method public final requestContentCardsRefresh()V
    .locals 1

    .line 349
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestContentCardsRefresh()V

    return-void
.end method

.method public final requestFeedRefresh()V
    .locals 1

    .line 312
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestFeedRefresh()V

    return-void
.end method

.method public final requestGeofences(DD)V
    .locals 1

    .line 677
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/braze/Braze;->requestGeofences(DD)V

    return-void
.end method

.method public final requestImmediateDataFlush()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestImmediateDataFlush()V

    return-void
.end method

.method public final requestLocationInitialization()V
    .locals 1

    .line 675
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestLocationInitialization()V

    return-void
.end method

.method public final requestPushPermission(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 372
    iget-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->currentActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/braze/support/PermissionUtils;->requestPushPermissionPrompt(Landroid/app/Activity;)V

    return-void
.end method

.method public final setAdTrackingEnabled(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "googleAdvertisingId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/braze/Braze;->setGoogleAdvertisingId(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setAttributionData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    new-instance v0, Lcom/braze/models/outgoing/AttributionData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/braze/models/outgoing/AttributionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    new-instance p1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda45;

    invoke-direct {p1, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda45;-><init>(Lcom/braze/models/outgoing/AttributionData;)V

    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 803
    :cond_1
    :goto_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda43;

    invoke-direct {v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda43;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final setBoolCustomUserAttribute(Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda47;

    invoke-direct {v0, p3, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda47;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda56;

    invoke-direct {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda56;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCustomUserAttributeArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    .line 192
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 194
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    new-instance p2, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda18;

    invoke-direct {p2, p3, p1, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda18;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCustomUserAttributeObject(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/Callback;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda22;

    invoke-direct {v5}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda22;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 207
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v13, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda33;

    invoke-direct {v13}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda33;-><init>()V

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p0

    invoke-static/range {v8 .. v15}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 210
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-static {v3, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$parseReadableMap(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 211
    new-instance v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda44;

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda44;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCustomUserAttributeObjectArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lorg/json/JSONArray;

    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-static {v1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$parseReadableArray(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 185
    new-instance p2, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;

    invoke-direct {p2, p3, p1, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-direct {p0, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setDateCustomUserAttribute(Ljava/lang/String;ILcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda5;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setDateOfBirth(III)V
    .locals 1

    .line 244
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda37;

    invoke-direct {v0, p2, p1, p3, p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda37;-><init>(IIILcom/braze/reactbridge/BrazeReactBridgeImpl;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setDoubleCustomUserAttribute(Ljava/lang/String;FLcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda41;

    invoke-direct {v0, p3, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda41;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;F)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda58;

    invoke-direct {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda58;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setEmailNotificationSubscriptionType(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 7

    const-string/jumbo v0, "subscriptionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-static {v1, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$parseNotificationSubscriptionType(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid subscription type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Email notification subscription type not set."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    .line 294
    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 300
    :cond_0
    new-instance p1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda12;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;)V

    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setFirstName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "firstName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setGender(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 7

    const-string v0, "gender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/braze/enums/Gender;->Companion:Lcom/braze/enums/Gender$Companion;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/braze/enums/Gender$Companion;->getGender(Ljava/lang/String;)Lcom/braze/enums/Gender;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid input "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Gender not set."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 240
    :cond_0
    new-instance p1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda19;

    invoke-direct {p1, p2, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda19;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/Gender;)V

    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setHomeCity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "homeCity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda60;

    invoke-direct {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda60;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setIntCustomUserAttribute(Ljava/lang/String;ILcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p3, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setLastKnownLocation(DDDDD)V
    .locals 12

    .line 689
    new-instance v11, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;

    move-object v0, v11

    move-wide/from16 v1, p7

    move-wide/from16 v3, p9

    move-wide/from16 v5, p5

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;-><init>(DDDDD)V

    move-object v0, p0

    invoke-direct {p0, v11}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setLastName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lastName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda36;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setLocationCustomAttribute(Ljava/lang/String;DDLcom/facebook/react/bridge/Callback;)V
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda51;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda51;-><init>(Ljava/lang/String;DDLcom/facebook/react/bridge/Callback;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda59;

    invoke-direct {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda59;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setPushNotificationSubscriptionType(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 7

    const-string/jumbo v0, "subscriptionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v1, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->Companion:Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;

    invoke-static {v1, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->access$parseNotificationSubscriptionType(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid subscription type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Push notification subscription type not set."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    .line 280
    invoke-static/range {v1 .. v6}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;->reportResult$default(Lcom/braze/reactbridge/BrazeReactBridgeImpl$Companion;Lcom/facebook/react/bridge/Callback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 286
    :cond_0
    new-instance p1, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda57;

    invoke-direct {p1, p2, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda57;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;)V

    invoke-direct {p0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setSdkAuthenticationSignature(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->getBraze()Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->setSdkAuthenticationSignature(Ljava/lang/String;)V

    return-void
.end method

.method public final setStringCustomUserAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, p3, p1, p2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda21;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final subscribeToInAppMessage(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 699
    sget-object p1, Lcom/braze/ui/inappmessage/InAppMessageOperation;->DISPLAY_NOW:Lcom/braze/ui/inappmessage/InAppMessageOperation;

    goto :goto_0

    .line 701
    :cond_0
    sget-object p1, Lcom/braze/ui/inappmessage/InAppMessageOperation;->DISPLAY_LATER:Lcom/braze/ui/inappmessage/InAppMessageOperation;

    .line 698
    :goto_0
    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->inAppMessageDisplayOperation:Lcom/braze/ui/inappmessage/InAppMessageOperation;

    .line 703
    invoke-direct {p0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->setDefaultInAppMessageListener()V

    return-void
.end method

.method public final unsetCustomUserAttribute(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda61;

    invoke-direct {v0, p2, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda61;-><init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->runOnUser(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final wipeData()V
    .locals 2

    .line 669
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->wipeData(Landroid/content/Context;)V

    return-void
.end method
