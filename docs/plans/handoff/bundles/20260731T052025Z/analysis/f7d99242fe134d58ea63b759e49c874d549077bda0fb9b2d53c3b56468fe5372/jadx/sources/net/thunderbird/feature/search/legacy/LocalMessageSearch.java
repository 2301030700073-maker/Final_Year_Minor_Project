package net.thunderbird.feature.search.legacy;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import net.thunderbird.feature.search.legacy.api.SearchCondition;
import net.thunderbird.feature.search.legacy.api.SearchField;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class LocalMessageSearch {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final Set accountUuidSet;
    public SearchConditionTreeNode conditionsRoot;
    public String id;
    public boolean isManualSearch;
    public final Set leafSet;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return LocalMessageSearch$$serializer.INSTANCE;
        }
    }

    static {
        LocalMessageSearch$$ExternalSyntheticLambda0 localMessageSearch$$ExternalSyntheticLambda0 = new LocalMessageSearch$$ExternalSyntheticLambda0(0);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, ResultKt.lazy(lazyThreadSafetyMode, localMessageSearch$$ExternalSyntheticLambda0), null, ResultKt.lazy(lazyThreadSafetyMode, new LocalMessageSearch$$ExternalSyntheticLambda0(20))};
    }

    public /* synthetic */ LocalMessageSearch(int i, String str, boolean z, Set set, SearchConditionTreeNode searchConditionTreeNode, Set set2) {
        this.id = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.isManualSearch = false;
        } else {
            this.isManualSearch = z;
        }
        if ((i & 4) == 0) {
            this.accountUuidSet = new HashSet();
        } else {
            this.accountUuidSet = set;
        }
        if ((i & 8) == 0) {
            this.conditionsRoot = null;
        } else {
            this.conditionsRoot = searchConditionTreeNode;
        }
        if ((i & 16) == 0) {
            this.leafSet = new HashSet();
        } else {
            this.leafSet = set2;
        }
    }

    public final void addAccountUuid(String str) {
        str.getClass();
        this.accountUuidSet.add(str);
    }

    public final void addAllowedFolder(long j) {
        this.conditionsRoot = and(new SearchCondition(MessageSearchField.FOLDER, SearchAttribute.EQUALS, String.valueOf(j)));
    }

    public final SearchConditionTreeNode and(SearchCondition searchCondition) {
        SearchConditionTreeNode searchConditionTreeNode = new SearchConditionTreeNode(SearchConditionTreeNode.Operator.CONDITION, searchCondition, (SearchConditionTreeNode) null, (SearchConditionTreeNode) null, 12);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        SearchConditionTreeNode.collectLeaves(searchConditionTreeNode, linkedHashSet);
        this.leafSet.addAll(linkedHashSet);
        SearchConditionTreeNode searchConditionTreeNode2 = this.conditionsRoot;
        if (searchConditionTreeNode2 != null) {
            Options.Companion.validateTree(searchConditionTreeNode);
            searchConditionTreeNode = new SearchConditionTreeNode(SearchConditionTreeNode.Operator.AND, (SearchCondition) null, searchConditionTreeNode2, searchConditionTreeNode, 2);
        }
        this.conditionsRoot = searchConditionTreeNode;
        return searchConditionTreeNode;
    }

    public final Set getAccountUuids() {
        return CollectionsKt.toSet(this.accountUuidSet);
    }

    public final SearchConditionTreeNode getConditions() {
        SearchConditionTreeNode searchConditionTreeNode = this.conditionsRoot;
        if (searchConditionTreeNode != null) {
            return searchConditionTreeNode;
        }
        return new SearchConditionTreeNode(SearchConditionTreeNode.Operator.CONDITION, new SearchCondition(MessageSearchField.SUBJECT, SearchAttribute.CONTAINS, ""), (SearchConditionTreeNode) null, (SearchConditionTreeNode) null, 12);
    }

    public final ArrayList getFolderIds() {
        String str;
        Set set = this.leafSet;
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            SearchCondition searchCondition = ((SearchConditionTreeNode) it.next()).condition;
            Long l = null;
            if (searchCondition != null) {
                if (searchCondition.field != MessageSearchField.FOLDER || searchCondition.attribute != SearchAttribute.EQUALS) {
                    searchCondition = null;
                }
                if (searchCondition != null && (str = searchCondition.value) != null) {
                    l = Long.valueOf(Long.parseLong(str));
                }
            }
            if (l != null) {
                arrayList.add(l);
            }
        }
        return arrayList;
    }

    public final String getRemoteSearchArguments() {
        String str;
        Iterator it = this.leafSet.iterator();
        do {
            str = null;
            if (!it.hasNext()) {
                break;
            }
            SearchCondition searchCondition = ((SearchConditionTreeNode) it.next()).condition;
            if (searchCondition != null) {
                SearchField searchField = searchCondition.field;
                if (searchField != MessageSearchField.SUBJECT && searchField != MessageSearchField.SENDER) {
                    searchCondition = null;
                }
                if (searchCondition != null) {
                    str = searchCondition.value;
                }
            }
        } while (str == null);
        return str;
    }

    public final void or(SearchCondition searchCondition) {
        SearchConditionTreeNode searchConditionTreeNode = new SearchConditionTreeNode(SearchConditionTreeNode.Operator.CONDITION, searchCondition, (SearchConditionTreeNode) null, (SearchConditionTreeNode) null, 12);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        SearchConditionTreeNode.collectLeaves(searchConditionTreeNode, linkedHashSet);
        this.leafSet.addAll(linkedHashSet);
        SearchConditionTreeNode searchConditionTreeNode2 = this.conditionsRoot;
        if (searchConditionTreeNode2 != null) {
            Options.Companion.validateTree(searchConditionTreeNode);
            searchConditionTreeNode = new SearchConditionTreeNode(SearchConditionTreeNode.Operator.OR, (SearchCondition) null, searchConditionTreeNode2, searchConditionTreeNode, 2);
        }
        this.conditionsRoot = searchConditionTreeNode;
    }

    public final String toString() {
        return "LocalSearch(id='" + this.id + "', isManualSearch=" + this.isManualSearch + ", accountUuidSet=" + this.accountUuidSet + ", conditionsRoot=" + this.conditionsRoot + ", leafSet=" + this.leafSet + ")";
    }

    public final void and(MessageSearchField messageSearchField, String str, SearchAttribute searchAttribute) {
        messageSearchField.getClass();
        str.getClass();
        and(new SearchCondition(messageSearchField, searchAttribute, str));
    }

    public LocalMessageSearch() {
        this.id = "";
        this.accountUuidSet = new HashSet();
        this.leafSet = new HashSet();
    }
}
