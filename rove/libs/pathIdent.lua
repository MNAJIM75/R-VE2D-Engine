---@meta
---@class rove.Filesystem
--Functions
---@field has_dir_end       fun(P:string) has_dir_end (P)	Returns true if path has trailing path name separator.
---@field remove_dir_end    fun(P:string) remove_dir_end (P)	Removes the path name separator from the end of path, if it has it.
---@field ensure_dir_end    fun(P:string) ensure_dir_end (P)	Appends a path name separator to path if one does not exist.
---@field normalize         fun(P:string) normalize (P)	Normalize a path.
---@field join              fun(...) join (...)	Join one or more path components.
---@field splitext          fun(P:string) splitext (P)	Split the path into root and extension.
---@field splitpath         fun(P:string) splitpath (P)	Split the path into dirname and basename.
---@field split             fun(P:string) split (P)	Alias to splitpath.
---@field splitroot         fun(P:string) splitroot (P)	Split first path part for absolute path.
---@field splitdrive        fun(P:string) splitdrive (P)	Split path into drive specification and path.
---@field basename          fun(P:string) basename (P)	Return the base name of path.
---@field dirname           fun(P:string) dirname (P)	Return the directory name of path.
---@field extension         fun(P:string) extension (P)	Return the extension of path.
---@field root              fun(P:string) root (P)	Return first path part for absolute path.
---@field isfullpath        fun(P:string) isfullpath (P)	Return `true` if path contain root part.
---@field isabs             fun(P:string) isabs (P)	Alias to isfullpath
---@field user_home         fun(P:string) user_home ()	return user_home dir
---@field flags             fun(P:string) flags (P)	Return file attributes.
---@field tmpdir            fun() tmpdir ()	Return path to temp directory.
---@field tmpname           fun() tmpname ()	Return full path for temp file.
---@field size              fun(P:string) size (P)	Return size in bytes for file.
---@field getsize           fun(P:string) getsize (P)	Alias to size
---@field fullpath          fun(P:string) fullpath (P)	Return full normalized path.
---@field abspath           fun(P:string) abspath (P)	Alias to fullpath.
---@field exists            fun(P:string) exists (P)	Return path if path existing in file system.
---@field isdir             fun(P:string) isdir (P)	Return path if path refers to an existing directory.
---@field isfile            fun(P:string) isfile (P)	Return path if path refers to an existing file.
---@field islink            fun(P:string) islink (P)	Return path if path refers to an existing symbolic link.
---@field isempty           fun(P:string) isempty (P)	Return true if directory is empty.
---@field ctime             fun(P:string) ctime (P)	Return creation file time.
---@field mtime             fun(P:string) mtime (P)	Return last modification file time.
---@field atime             fun(P:string) atime (P)	Return last access file time.
---@field cdate             fun(P:string) cdate (P)	Return `path.ctime` as `date` object.
---@field mdate             fun(P:string) mdate (P)	Return `path.mtime` as `date` object.
---@field adate             fun(P:string) adate (P)	Return `path.atime` as `date` object.
---@field getctime          fun(P:string) getctime (P)	Alias to ctime
---@field getmtime          fun(P:string) getmtime (P)	Alias to mtime
---@field getatime          fun(P:string) getatime (P)	Alias to atime
---@field mkdir             fun(P:string) mkdir (P)	Create new directory.
---@field rmdir             fun(P:string) rmdir (P)	Remove empty directory.
---@field remove            fun(P:string, opt:rove.Filesystem.remove_opt) remove (P, opt)	Remove file or empty directory.
---@field rename            fun(from:string, to:string, force:boolean) rename (from, to, force)	Rename existed file.
---@field copy              fun(from:string, to:string, opt:rove.Filesystem.copy_opt) copy (from, to, opt)	Copy file or directory tree.
---@field currentdir        fun():string currentdir ()	Return current work directory path.
---@field chdir             fun(P:string) chdir (P)	Change current work directory path.
---@field each              fun(a) each (str_file, str_params, func_callback, tbl_option)	Iterate over directory tree.
--[[
---@field each function each (str_file, str_params, tbl_option)	Iterate over directory tree.
---@field each function each (str_file, func_callback, tbl_option)	Iterate over directory tree.
---@field each function each (str_file, tbl_option)	Iterate over directory tree.
---@field each function each (func_callback, tbl_option)	Iterate over directory tree.
]]
--Fields
---@field DIR_SEP string The path separator.
---@field IS_WINDOWS boolean	???

--Tables
---@class rove.Filesystem.copy_opt table copy_opt Option table for `path.copy` function.
---@field delay             boolean (default false)
---@field recurse           boolean (default false)
---@field skipdirs          boolean (default false)
---@field skipfiles         boolean (default false)
---@field accept            fun(src) (default function(src))
---@field error             fun(err) (default function(err))

---@class rove.Filesystem.remove_opt function remove_opt Option table for `path.remove` function.
---@field delay             boolean (default true)
---@field recurse           boolean (default false)
---@field skipdirs          boolean (default false)
---@field skipfiles         boolean (default false)
---@field accept            fun(src) (default function(src))
---@field error             fun(err) (default function(err))

