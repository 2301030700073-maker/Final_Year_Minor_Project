package androidx.room.util;

import androidx.compose.ui.Modifier;
import androidx.viewpager.widget.ViewPager;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TableInfo {
    public final Map columns;
    public final Set foreignKeys;
    public final Set indices;
    public final String name;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Column {
        public final int affinity;
        public final int createdFrom;
        public final String defaultValue;
        public final String name;
        public final boolean notNull;
        public final int primaryKeyPosition;
        public final String type;

        public Column(int i, String str, String str2, String str3, boolean z, int i2) {
            str.getClass();
            str2.getClass();
            this.name = str;
            this.type = str2;
            this.notNull = z;
            this.primaryKeyPosition = i;
            this.defaultValue = str3;
            this.createdFrom = i2;
            String upperCase = str2.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            this.affinity = StringsKt.contains$default(upperCase, "INT") ? 3 : (StringsKt.contains$default(upperCase, "CHAR") || StringsKt.contains$default(upperCase, "CLOB") || StringsKt.contains$default(upperCase, "TEXT")) ? 2 : StringsKt.contains$default(upperCase, "BLOB") ? 5 : (StringsKt.contains$default(upperCase, "REAL") || StringsKt.contains$default(upperCase, "FLOA") || StringsKt.contains$default(upperCase, "DOUB")) ? 4 : 1;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Column) {
                    boolean z = this.primaryKeyPosition > 0;
                    Column column = (Column) obj;
                    int i = column.createdFrom;
                    if (z == (column.primaryKeyPosition > 0) && Intrinsics.areEqual(this.name, column.name) && this.notNull == column.notNull) {
                        String str = column.defaultValue;
                        int i2 = this.createdFrom;
                        String str2 = this.defaultValue;
                        if ((i2 != 1 || i != 2 || str2 == null || DBUtil.defaultValueEqualsCommon(str2, str)) && ((i2 != 2 || i != 1 || str == null || DBUtil.defaultValueEqualsCommon(str, str2)) && ((i2 == 0 || i2 != i || (str2 == null ? str == null : DBUtil.defaultValueEqualsCommon(str2, str))) && this.affinity == column.affinity))) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (((((this.name.hashCode() * 31) + this.affinity) * 31) + (this.notNull ? 1231 : 1237)) * 31) + this.primaryKeyPosition;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("\n            |Column {\n            |   name = '");
            sb.append(this.name);
            sb.append("',\n            |   type = '");
            sb.append(this.type);
            sb.append("',\n            |   affinity = '");
            sb.append(this.affinity);
            sb.append("',\n            |   notNull = '");
            sb.append(this.notNull);
            sb.append("',\n            |   primaryKeyPosition = '");
            sb.append(this.primaryKeyPosition);
            sb.append("',\n            |   defaultValue = '");
            String str = this.defaultValue;
            if (str == null) {
                str = "undefined";
            }
            sb.append(str);
            sb.append("'\n            |}\n        ");
            return StringsKt__IndentKt.prependIndent$default(StringsKt__IndentKt.trimMargin$default(sb.toString()));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ForeignKey {
        public final List columnNames;
        public final String onDelete;
        public final String onUpdate;
        public final List referenceColumnNames;
        public final String referenceTable;

        public ForeignKey(String str, String str2, String str3, List list, List list2) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            this.referenceTable = str;
            this.onDelete = str2;
            this.onUpdate = str3;
            this.columnNames = list;
            this.referenceColumnNames = list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ForeignKey)) {
                return false;
            }
            ForeignKey foreignKey = (ForeignKey) obj;
            if (Intrinsics.areEqual(this.referenceTable, foreignKey.referenceTable) && Intrinsics.areEqual(this.onDelete, foreignKey.onDelete) && Intrinsics.areEqual(this.onUpdate, foreignKey.onUpdate) && this.columnNames.equals(foreignKey.columnNames)) {
                return this.referenceColumnNames.equals(foreignKey.referenceColumnNames);
            }
            return false;
        }

        public final int hashCode() {
            return this.referenceColumnNames.hashCode() + ((this.columnNames.hashCode() + Modifier.CC.m(Modifier.CC.m(this.referenceTable.hashCode() * 31, 31, this.onDelete), 31, this.onUpdate)) * 31);
        }

        public final String toString() {
            return StringsKt__IndentKt.prependIndent$default(StringsKt__IndentKt.trimMargin$default("\n            |ForeignKey {\n            |   referenceTable = '" + this.referenceTable + "',\n            |   onDelete = '" + this.onDelete + "',\n            |   onUpdate = '" + this.onUpdate + "',\n            |   columnNames = {" + DBUtil.joinToStringMiddleWithIndent(CollectionsKt.sorted(this.columnNames)) + "\n            |   referenceColumnNames = {" + DBUtil.joinToStringEndWithIndent(CollectionsKt.sorted(this.referenceColumnNames)) + "\n            |}\n        "));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Index {
        public final List columns;
        public final String name;
        public final List orders;
        public final boolean unique;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [java.util.Collection, java.util.List] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList] */
        public Index(String str, boolean z, List list, List list2) {
            str.getClass();
            this.name = str;
            this.unique = z;
            this.columns = list;
            this.orders = list2;
            if (list2.isEmpty()) {
                int size = list.size();
                list2 = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    list2.add("ASC");
                }
            }
            this.orders = list2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Index) {
                Index index = (Index) obj;
                String str = index.name;
                if (this.unique == index.unique && this.columns.equals(index.columns) && Intrinsics.areEqual(this.orders, index.orders)) {
                    String str2 = this.name;
                    return StringsKt__StringsJVMKt.startsWith(str2, "index_", false) ? StringsKt__StringsJVMKt.startsWith(str, "index_", false) : str2.equals(str);
                }
            }
            return false;
        }

        public final int hashCode() {
            String str = this.name;
            return this.orders.hashCode() + ((this.columns.hashCode() + ((((StringsKt__StringsJVMKt.startsWith(str, "index_", false) ? -1184239155 : str.hashCode()) * 31) + (this.unique ? 1 : 0)) * 31)) * 31);
        }

        public final String toString() {
            return StringsKt__IndentKt.prependIndent$default(StringsKt__IndentKt.trimMargin$default("\n            |Index {\n            |   name = '" + this.name + "',\n            |   unique = '" + this.unique + "',\n            |   columns = {" + DBUtil.joinToStringMiddleWithIndent(this.columns) + "\n            |   orders = {" + DBUtil.joinToStringEndWithIndent(this.orders) + "\n            |}\n        "));
        }
    }

    public TableInfo(String str, Map map, AbstractSet abstractSet, AbstractSet abstractSet2) {
        abstractSet.getClass();
        this.name = str;
        this.columns = map;
        this.foreignKeys = abstractSet;
        this.indices = abstractSet2;
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo)) {
            return false;
        }
        TableInfo tableInfo = (TableInfo) obj;
        if (!this.name.equals(tableInfo.name) || !this.columns.equals(tableInfo.columns) || !Intrinsics.areEqual(this.foreignKeys, tableInfo.foreignKeys)) {
            return false;
        }
        Set set2 = this.indices;
        if (set2 == null || (set = tableInfo.indices) == null) {
            return true;
        }
        return set2.equals(set);
    }

    public final int hashCode() {
        return this.foreignKeys.hashCode() + ((this.columns.hashCode() + (this.name.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |TableInfo {\n            |    name = '");
        sb.append(this.name);
        sb.append("',\n            |    columns = {");
        sb.append(DBUtil.formatString(CollectionsKt.sortedWith(this.columns.values(), new ViewPager.AnonymousClass1(7))));
        sb.append("\n            |    foreignKeys = {");
        sb.append(DBUtil.formatString(this.foreignKeys));
        sb.append("\n            |    indices = {");
        Set set = this.indices;
        sb.append(DBUtil.formatString(set != null ? CollectionsKt.sortedWith(set, new ViewPager.AnonymousClass1(8)) : EmptyList.INSTANCE));
        sb.append("\n            |}\n        ");
        return StringsKt__IndentKt.trimMargin$default(sb.toString());
    }
}
