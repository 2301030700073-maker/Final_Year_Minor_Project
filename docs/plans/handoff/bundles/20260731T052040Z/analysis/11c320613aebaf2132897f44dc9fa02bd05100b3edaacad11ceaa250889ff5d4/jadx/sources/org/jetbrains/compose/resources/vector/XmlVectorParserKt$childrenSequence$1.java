package org.jetbrains.compose.resources.vector;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jetbrains.compose.resources.vector.xmldom.Element;
import org.jetbrains.compose.resources.vector.xmldom.ElementImpl;
import org.w3c.dom.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class XmlVectorParserKt$childrenSequence$1 extends RestrictedSuspendLambda implements Function2 {
    final /* synthetic */ Element $this_childrenSequence;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public XmlVectorParserKt$childrenSequence$1(Element element, Continuation continuation) {
        super(2, continuation);
        this.$this_childrenSequence = element;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        XmlVectorParserKt$childrenSequence$1 xmlVectorParserKt$childrenSequence$1 = new XmlVectorParserKt$childrenSequence$1(this.$this_childrenSequence, continuation);
        xmlVectorParserKt$childrenSequence$1.L$0 = obj;
        return xmlVectorParserKt$childrenSequence$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((XmlVectorParserKt$childrenSequence$1) create((SequenceBuilderIterator) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int length;
        int i;
        Object connectionPool;
        SequenceBuilderIterator sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ConnectionPool connectionPool2 = (ConnectionPool) this.$this_childrenSequence;
            connectionPool2.getClass();
            length = ((Node) connectionPool2.delegate).getChildNodes().getLength();
            i = 0;
        } else {
            if (i2 != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            length = this.I$1;
            int i3 = this.I$0;
            ResultKt.throwOnFailure(obj);
            i = i3 + 1;
        }
        if (i >= length) {
            return Unit.INSTANCE;
        }
        ConnectionPool connectionPool3 = (ConnectionPool) this.$this_childrenSequence;
        connectionPool3.getClass();
        Node node = (Node) connectionPool3.delegate;
        node.getChildNodes().getLength();
        Node item = node.getChildNodes().item(i);
        if (item instanceof org.w3c.dom.Element) {
            connectionPool = new ElementImpl((org.w3c.dom.Element) item);
        } else {
            item.getClass();
            connectionPool = new ConnectionPool(item, 24);
        }
        this.L$0 = sequenceBuilderIterator;
        this.I$0 = i;
        this.I$1 = length;
        this.label = 1;
        sequenceBuilderIterator.yield(connectionPool, this);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
