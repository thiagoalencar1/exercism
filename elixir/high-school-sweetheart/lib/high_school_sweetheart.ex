defmodule HighSchoolSweetheart do
  def first_letter(name), do: String.trim(name) |> String.first()

  def initial(name), do: String.upcase(first_letter(name)) <> "."

  def initials(full_name) do
    [first_name, last_name] = String.split(full_name)
    "#{initial(first_name)} #{initial(last_name)}"
  end

  def pair(full_name1, full_name2) do
    n1 = "#{initials(full_name1)}"
    n2 = "#{initials(full_name2)}"

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{n1}  +  #{n2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
