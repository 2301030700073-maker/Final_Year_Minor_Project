package org.schabi.newpipe.extractor;

import j$.util.DesugarCollections;
import j$.util.List;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.FoundAdException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class InfoItemsCollector implements Collector {
    public final Comparator comparator;
    public final int serviceId;
    public final ArrayList itemList = new ArrayList();
    public final ArrayList errors = new ArrayList();

    public InfoItemsCollector(int i, Comparator comparator) {
        this.serviceId = i;
        this.comparator = comparator;
    }

    public final void addError(Exception exc) {
        this.errors.add(exc);
    }

    public void commit(InfoItemExtractor infoItemExtractor) {
        try {
            this.itemList.add((InfoItem) extract(infoItemExtractor));
        } catch (FoundAdException unused) {
        } catch (ParsingException e) {
            addError(e);
        }
    }

    public List getErrors() {
        return DesugarCollections.unmodifiableList(this.errors);
    }

    public final List getItems() {
        ArrayList arrayList = this.itemList;
        Comparator comparator = this.comparator;
        if (comparator != null) {
            List.EL.sort(arrayList, comparator);
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
