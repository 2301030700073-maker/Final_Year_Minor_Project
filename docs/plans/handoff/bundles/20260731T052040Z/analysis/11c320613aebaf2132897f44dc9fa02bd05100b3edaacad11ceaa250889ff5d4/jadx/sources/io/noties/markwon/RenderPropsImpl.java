package io.noties.markwon;

import io.noties.markwon.core.factory.CodeSpanFactory;
import java.util.HashMap;
import org.koin.core.Koin;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RenderPropsImpl {
    public final HashMap values;

    public RenderPropsImpl(int i) {
        switch (i) {
            case 1:
                this.values = new HashMap();
                break;
            case 2:
                this.values = new HashMap(3);
                break;
            case 3:
                this.values = new HashMap();
                break;
            case 4:
            default:
                this.values = new HashMap(3);
                break;
            case 5:
                this.values = new HashMap();
                break;
        }
    }

    public void on(Class cls, MarkwonVisitor$NodeVisitor markwonVisitor$NodeVisitor) {
        this.values.put(cls, markwonVisitor$NodeVisitor);
    }

    public void setFactory(Class cls, CodeSpanFactory codeSpanFactory) {
        this.values.put(cls, codeSpanFactory);
    }

    public RenderPropsImpl(Koin koin) {
        this.values = new HashMap();
    }
}
