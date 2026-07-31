package io.noties.markwon.linkify;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.core.CorePlugin;
import java.util.ArrayList;
import java.util.Iterator;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LinkifyPlugin extends AbstractMarkwonPlugin {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class LinkifyTextAddedListener {
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin
    public final void configure(ProcessFinisher processFinisher) {
        AbstractMarkwonPlugin abstractMarkwonPlugin;
        AbstractMarkwonPlugin abstractMarkwonPlugin2;
        ArrayList arrayList = (ArrayList) processFinisher.context;
        Iterator it = ((ArrayList) processFinisher.config).iterator();
        while (true) {
            abstractMarkwonPlugin = null;
            if (!it.hasNext()) {
                abstractMarkwonPlugin2 = null;
                break;
            } else {
                abstractMarkwonPlugin2 = (AbstractMarkwonPlugin) it.next();
                if (CorePlugin.class.isAssignableFrom(abstractMarkwonPlugin2.getClass())) {
                    break;
                }
            }
        }
        if (abstractMarkwonPlugin2 == null) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                AbstractMarkwonPlugin abstractMarkwonPlugin3 = (AbstractMarkwonPlugin) it2.next();
                if (CorePlugin.class.isAssignableFrom(abstractMarkwonPlugin3.getClass())) {
                    abstractMarkwonPlugin = abstractMarkwonPlugin3;
                    break;
                }
            }
            if (abstractMarkwonPlugin == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Requested plugin is not added: ", CorePlugin.class.getName(), ", plugins: ", arrayList);
                return;
            } else {
                processFinisher.configure(abstractMarkwonPlugin);
                abstractMarkwonPlugin2 = abstractMarkwonPlugin;
            }
        }
        ((CorePlugin) abstractMarkwonPlugin2).onTextAddedListeners.add(new LinkifyTextAddedListener());
    }
}
