package org.jetbrains.compose.resources.vector;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.vector.xmldom.ElementImpl;
import org.jsoup.safety.Cleaner;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class XmlVectorParserKt$childrenSequence$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ ElementImpl $this_childrenSequence;
    public int I$0;
    public int I$1;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public XmlVectorParserKt$childrenSequence$1(ElementImpl elementImpl, Continuation continuation) {
        super(2, continuation);
        this.$this_childrenSequence = elementImpl;
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
        Object cleaner;
        Node node = (Node) this.$this_childrenSequence.safelist;
        SequenceBuilderIterator sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            length = node.getChildNodes().getLength();
            i = 0;
        } else {
            if (i2 != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
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
        node.getChildNodes().getLength();
        Node item = node.getChildNodes().item(i);
        if (item instanceof Element) {
            cleaner = new ElementImpl((Element) item);
        } else {
            item.getClass();
            cleaner = new Cleaner(item);
        }
        this.L$0 = sequenceBuilderIterator;
        this.I$0 = i;
        this.I$1 = length;
        this.label = 1;
        sequenceBuilderIterator.yield(cleaner, this);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
